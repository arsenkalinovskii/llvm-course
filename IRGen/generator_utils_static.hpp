#include <cstddef>
#include <string_view>

namespace string_utils {
    template <std::size_t N>
    struct string_literal {
        char value[N]{};

        constexpr string_literal() = default;

        constexpr string_literal(const char (&str)[N]) {
            for (std::size_t i = 0; i < N; ++i)
                value[i] = str[i];
        }

        constexpr std::size_t size() const {
            return N - 1;
        }

        constexpr operator std::string_view() const {
            return {value, size()};
        }
    };

    template <string_literal... Ss>
    struct concat_t;

    template <>
    struct concat_t<> {
        static constexpr string_literal<1> value{""};
    };

    template <string_literal S>
    struct concat_t<S> {
        static constexpr auto value = S;
    };

    template <string_literal S1, string_literal S2, string_literal... Ss>
    struct concat_t<S1, S2, Ss...> {
    private:
        static constexpr auto tail = concat_t<S2, Ss...>::value;

    public:
        static constexpr auto value = [] {
            string_literal<S1.size() + tail.size() + 1> result{};

            for (std::size_t i = 0; i < S1.size(); ++i)
                result.value[i] = S1.value[i];

            for (std::size_t i = 0; i < tail.size(); ++i)
                result.value[S1.size() + i] = tail.value[i];

            result.value[S1.size() + tail.size()] = '\0';
            return result;
        }();
    };

    template<string_literal... Ss>
    inline constexpr auto concat_v = concat_t<Ss...>::value;

    template<string_literal S, std::size_t N>
    struct times_t;

    template<string_literal S>
    struct times_t<S, 0> {
        static constexpr string_literal<1> value{""};
    };

    template<string_literal S>
    struct times_t<S, 1> {
        static constexpr auto value = S;
    };

    template<string_literal S, std::size_t N>
    struct times_t {
        static constexpr auto value = concat_v<S, times_t<S, N - 1>::value>;
    };

    template<string_literal S, std::size_t N>
    inline constexpr auto times_v = times_t<S, N>::value;

    constexpr std::string_view test1 = concat_v<"a", "b", "c">;
    static_assert(test1 == "abc");
}; // namespace string_utils

namespace cpp_builder {

    template<typename Type>
    inline constexpr auto llvm_type_variable_name = string_utils::string_literal{""};
    template<>
    inline constexpr auto llvm_type_variable_name<void> = string_utils::string_literal{"voidType"};
    template<>
    inline constexpr auto llvm_type_variable_name<int> = string_utils::string_literal{"int32Type"};
    template<>
    inline constexpr auto llvm_type_variable_name<float> = string_utils::string_literal{"floatType"};

    template<typename Type>
    inline constexpr auto llvm_type_variable_decl = string_utils::string_literal{""};
    template<>
    inline constexpr auto llvm_type_variable_decl<void> = string_utils::string_literal{
        "\tType *voidType = Type::getVoidTy(context);\n"
    };
    template<>
    inline constexpr auto llvm_type_variable_decl<int> = string_utils::string_literal{
        "\tType *intType = Type::getInt32Ty(context);\n"
    };
    template<>
    inline constexpr auto llvm_type_variable_decl<float> = string_utils::string_literal{
        "\tType *floatType = Type::getFloatTy(context);\n"
    };

    template<typename... Types>
    inline constexpr auto llvm_array_of_types = string_utils::string_literal{""};

    template<typename Type, typename... Types>
    inline constexpr auto llvm_array_of_types<Type, Types...> =
        string_utils::concat_v<
            "{", llvm_type_variable_name<Type>, 
            string_utils::concat_v<", ", llvm_type_variable_name<Types>>...,  
            "}"
        >;

    template<typename Fn>
    inline constexpr auto llvm_get_fn_type = string_utils::string_literal{""};

    template<typename Ret, typename... Args>
    inline constexpr auto llvm_get_fn_type<Ret(Args...)> =
        string_utils::concat_v<
            "FunctionType::get(",
            llvm_type_variable_name<Ret>,
            ", ",
            llvm_array_of_types<Args...>,
            ", false)"
        >;

    template<string_utils::string_literal FnStr>
    inline constexpr auto llvm_get_fn_func = string_utils::concat_v<FnStr, "Func">;

    template<typename Fn, string_utils::string_literal FnStr, std::size_t Level, typename... Types>
    inline constexpr auto llvm_insert_fn_helper = string_utils::string_literal{""};

    template<typename Fn, string_utils::string_literal FnStr, std::size_t Level>
    inline constexpr auto llvm_insert_fn_helper<Fn, FnStr, Level> =
        string_utils::concat_v<
            string_utils::times_v<"\t", Level>, "{\n",
            string_utils::times_v<"\t", Level + 1>, llvm_get_fn_func<FnStr>, " = ",
            "module->getOrInsertFunction(\"", FnStr, "\", ", llvm_get_fn_type<Fn>, ");\n",
            string_utils::times_v<"\t", Level>, "}\n"
        >;

    template<typename Fn, string_utils::string_literal FnStr, std::size_t Level, typename Type, typename... Types>
    inline constexpr auto llvm_insert_fn_helper<Fn, FnStr, Level, Type, Types...> =
        string_utils::concat_v<
            string_utils::times_v<"\t", Level>, "{\n",
            string_utils::times_v<"\t", Level>, llvm_type_variable_decl<Type>,
            llvm_insert_fn_helper<Fn, FnStr, Level + 1, Types...>,
            string_utils::times_v<"\t", Level>, "}\n"
        >;

    template<typename Fn, string_utils::string_literal FnStr>
    inline constexpr auto llvm_declare_fn = string_utils::string_literal{""};

    template<typename Ret, typename... Args, string_utils::string_literal FnStr>
    inline constexpr auto llvm_declare_fn<Ret(Args...), FnStr> = 
        string_utils::concat_v<
            "\tFunctionCallee ", llvm_get_fn_func<FnStr>, ";\n",
            llvm_insert_fn_helper<Ret(Args...), FnStr, 1, Ret, Args...>
        >;
}; // namespace cpp_builder
