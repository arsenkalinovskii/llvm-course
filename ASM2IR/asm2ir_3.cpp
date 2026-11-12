#include "../App/sim.h"

#include <array>
#include <fstream>
#include <iostream>
#include <unordered_map>
#include <variant>
#include <vector>
#include <sstream>
#include <cstdint>
#include <memory>

using float64_t = double;

namespace args
{
    struct regs3
    {
        int x1, x2, x3;
    };
    struct regs2
    {
        int x1, x2;
    };
    struct regs1
    {
        int xx;
    };
    struct regs2imm64
    {
        int x1, x2;
        uint64_t imm64;
    };
    struct regs1imm64
    {
        int xx;
        uint64_t imm64;
    };
    struct imm64regs1
    {
        uint64_t imm64;
        int xx;
    };
    struct imm64regs2
    {
        uint64_t imm64;
        int x1, x2;
    };
    struct imm64
    {
        uint64_t imm64;
    };
    struct regs1fimm64
    {
        int xx;
        float64_t fimm64;
    };
    struct none
    {
    };

    using args_t = std::variant<
        regs3,
        regs2,
        regs1,
        regs2imm64,
        regs1imm64,
        imm64regs1,
        imm64regs2,
        imm64,
        regs1fimm64,
        none>;
}; // namespace args

class Processor;

#define DECLARE_INSTR(NAME)                        \
    class NAME final : public InstrBase            \
    {                                              \
    public:                                        \
        using InstrBase::InstrBase;                \
                                                   \
        void run_impl(args::args_t args) override; \
    };

namespace instr
{
    class InstrBase
    {
    protected:
        size_t pos;
        std::string name;
        Processor &proc;
        args::args_t args;

        uint64_t &ireg(int xx);

        float64_t &freg(int xx);

        std::vector<float64_t> &stack();

        size_t &pc();

        bool &is_running();

        virtual void run_impl(args::args_t args) = 0;

    public:
        InstrBase(size_t pos,
                  std::string name,
                  args::args_t args,
                  Processor &proc)
            : pos(pos), name(name), args(args), proc(proc) {}
        virtual ~InstrBase() = default;

        void run();
    };

    DECLARE_INSTR(InstrFSIN)
    DECLARE_INSTR(InstrPUTPIXEL)
    DECLARE_INSTR(InstrFLUSH)
    DECLARE_INSTR(InstrHAS_CLICK)
    DECLARE_INSTR(InstrGET_CLICK)
    DECLARE_INSTR(InstrHAS_SCROLL)
    DECLARE_INSTR(InstrGET_SCROLL)
    DECLARE_INSTR(InstrRCELL)
    DECLARE_INSTR(InstrWCELL)
    DECLARE_INSTR(InstrFSAT)
    DECLARE_INSTR(InstrFMUL)
    DECLARE_INSTR(InstrFDIV)
    DECLARE_INSTR(InstrFADD)
    DECLARE_INSTR(InstrFSUB)
    DECLARE_INSTR(InstrFTONE)
    DECLARE_INSTR(InstrFMOV)
    DECLARE_INSTR(InstrIMUL)
    DECLARE_INSTR(InstrIDIV)
    DECLARE_INSTR(InstrIADD)
    DECLARE_INSTR(InstrISUB)
    DECLARE_INSTR(InstrIMULI)
    DECLARE_INSTR(InstrIDIVI)
    DECLARE_INSTR(InstrIADDI)
    DECLARE_INSTR(InstrISUBI)
    DECLARE_INSTR(InstrIMOVI)
    DECLARE_INSTR(InstrIXCHG)
    DECLARE_INSTR(InstrIGEQ)
    DECLARE_INSTR(InstrILE)
    DECLARE_INSTR(InstrIGEQI)
    DECLARE_INSTR(InstrILEI)
    DECLARE_INSTR(InstrIAND)
    DECLARE_INSTR(InstrINT2FLOAT)
    DECLARE_INSTR(InstrFLOAT2INT)
    DECLARE_INSTR(InstrMOV)
    DECLARE_INSTR(InstrIMOVSP)
    DECLARE_INSTR(InstrIMOVSPI)
    DECLARE_INSTR(InstrGROW)
    DECLARE_INSTR(InstrSHRINK)
    DECLARE_INSTR(InstrINNER_GRID)
    DECLARE_INSTR(InstrFBGE)
    DECLARE_INSTR(InstrFBLE)
    DECLARE_INSTR(InstrIBNONZERO)
    DECLARE_INSTR(InstrB)
    DECLARE_INSTR(InstrEXIT)

    using InstrLOOP = InstrB;
}

using Instruction = instr::InstrBase;

class Processor
{
    friend class instr::InstrBase;

    static constexpr int IREG_FILE_SIZE = 16;
    static constexpr int FREG_FILE_SIZE = 16;

    std::array<float64_t, FREG_FILE_SIZE> FREG_FILE;
    std::array<uint64_t, IREG_FILE_SIZE> IREG_FILE;
    std::vector<float64_t> stack;
    std::vector<std::unique_ptr<Instruction>> program;
    std::unordered_map<std::string, size_t> labels;
    size_t pc;
    bool is_running;

    int get_reg(const std::string &s)
    {
        return std::stoi(s.substr(1));
    }

    uint64_t get_imm64(const std::string &s)
    {
        return std::stoull(s);
    }

    float64_t get_fimm64(const std::string &s)
    {
        return std::stod(s);
    }

public:
    Processor() = default;

    void load(char *filename)
    {
        std::ifstream input;
        input.open(filename);
        if (!input.is_open())
            throw std::runtime_error("can't open file");

        size_t instr_idx = 0;
        std::string line;
        while (std::getline(input, line))
        {
            std::istringstream iss(line);

            std::string token;
            if (!(iss >> token))
                continue;

            if (token.back() == ':')
            {
                token.pop_back();
                labels[token] = instr_idx;
                continue;
            }

            instr_idx++;
        }

        input.close();
        input.open(filename);

        instr_idx = 0;

        std::string name, arg;
        while (input >> name)
        {
            if (!name.compare("EXIT"))
            {
                args::none args;
                std::cout << "\tEXIT\n";
                program.push_back(std::make_unique<instr::InstrEXIT>(instr_idx, name, args, *this));
                instr_idx++;
                continue;
            }
            if (!name.compare("FSIN"))
            {
                args::regs2 args;
                input >> arg;
                std::cout << "\t" << arg;
                args.x1 = get_reg(arg);
                input >> arg;
                std::cout << " = sin(" << arg << ")\n";
                args.x2 = get_reg(arg);
                program.push_back(std::make_unique<instr::InstrFSIN>(instr_idx, name, args, *this));
                instr_idx++;
                continue;
            }
            if (!name.compare("PUTPIXEL"))
            {
                args::regs3 args;
                input >> arg;
                std::cout << "PUTPIXEL " << arg;
                args.x1 = get_reg(arg);
                input >> arg;
                std::cout << " " << arg;
                args.x2 = get_reg(arg);
                input >> arg;
                std::cout << " " << arg << '\n';
                args.x3 = get_reg(arg);
                program.push_back(std::make_unique<instr::InstrPUTPIXEL>(instr_idx, name, args, *this));
                instr_idx++;
                continue;
            }
            if (!name.compare("FLUSH"))
            {
                args::none args;
                std::cout << "\tFLUSH\n";
                program.push_back(std::make_unique<instr::InstrFLUSH>(instr_idx, name, args, *this));
                instr_idx++;
                continue;
            }

            if (!name.compare("HAS_CLICK"))
            {
                args::regs1 args;
                input >> arg;
                std::cout << "\tHAS_CLICK " << arg << '\n';
                args.xx = get_reg(arg);

                program.push_back(std::make_unique<instr::InstrHAS_CLICK>(instr_idx, name, args, *this));
                instr_idx++;
                continue;
            }

            if (!name.compare("GET_CLICK"))
            {
                args::regs2 args;
                input >> arg;
                std::cout << "\tGET_CLICK " << arg;
                args.x1 = get_reg(arg);
                input >> arg;
                std::cout << " " << arg << '\n';
                args.x2 = get_reg(arg);
                program.push_back(std::make_unique<instr::InstrGET_CLICK>(instr_idx, name, args, *this));
                instr_idx++;
                continue;
            }

            if (!name.compare("HAS_SCROLL"))
            {
                args::regs1 args;
                input >> arg;
                std::cout << "\tHAS_SCROLL " << arg << '\n';
                args.xx = get_reg(arg);
                program.push_back(std::make_unique<instr::InstrHAS_SCROLL>(instr_idx, name, args, *this));
                instr_idx++;
                continue;
            }

            if (!name.compare("GET_SCROLL"))
            {
                args::regs1 args;
                input >> arg;
                std::cout << "\tGET_SCROLL " << arg << '\n';
                args.xx = get_reg(arg);
                program.push_back(std::make_unique<instr::InstrGET_SCROLL>(instr_idx, name, args, *this));
                instr_idx++;
                continue;
            }

            if (!name.compare("RCELL"))
            {
                args::regs3 args;
                input >> arg;
                std::cout << "\tRCELL " << arg;
                args.x1 = get_reg(arg);
                input >> arg;
                std::cout << " " << arg;
                args.x2 = get_reg(arg);
                input >> arg;
                std::cout << " " << arg << '\n';
                args.x3 = get_reg(arg);
                program.push_back(std::make_unique<instr::InstrRCELL>(instr_idx, name, args, *this));
                instr_idx++;
                continue;
            }

            if (!name.compare("WCELL"))
            {
                args::regs3 args;
                input >> arg;
                std::cout << "\tWCELL " << arg;
                args.x1 = get_reg(arg);
                input >> arg;
                std::cout << " " << arg;
                args.x2 = get_reg(arg);
                input >> arg;
                std::cout << " " << arg << '\n';
                args.x3 = get_reg(arg);
                program.push_back(std::make_unique<instr::InstrWCELL>(instr_idx, name, args, *this));
                instr_idx++;
                continue;
            }

            if (!name.compare("FSAT"))
            {
                args::regs1 args;
                input >> arg;
                std::cout << "\tFSAT " << arg << '\n';
                args.xx = get_reg(arg);
                program.push_back(std::make_unique<instr::InstrFSAT>(instr_idx, name, args, *this));
                instr_idx++;
                continue;
            }
            if (!name.compare("FMUL") || !name.compare("FDIV") ||
                !name.compare("FADD") || !name.compare("FSUB"))
            {
                args::regs3 args;
                input >> arg;
                std::cout << "\t" << name << " " << arg;
                args.x1 = get_reg(arg);
                input >> arg;
                std::cout << " " << arg;
                args.x2 = get_reg(arg);
                input >> arg;
                std::cout << " " << arg << '\n';
                args.x3 = get_reg(arg);
                if (!name.compare("FMUL"))
                    program.push_back(std::make_unique<instr::InstrFMUL>(instr_idx, name, args, *this));
                else if (!name.compare("FDIV"))
                    program.push_back(std::make_unique<instr::InstrFDIV>(instr_idx, name, args, *this));
                else if (!name.compare("FADD"))
                    program.push_back(std::make_unique<instr::InstrFADD>(instr_idx, name, args, *this));
                else
                    program.push_back(std::make_unique<instr::InstrFSUB>(instr_idx, name, args, *this));
                instr_idx++;
                continue;
            }

            if (!name.compare("FTONE"))
            {
                args::regs2 args;
                input >> arg;
                std::cout << "\tFTONE " << arg;
                args.x1 = get_reg(arg);
                input >> arg;
                std::cout << " " << arg << '\n';
                args.x2 = get_reg(arg);
                program.push_back(std::make_unique<instr::InstrFTONE>(instr_idx, name, args, *this));
                instr_idx++;
                continue;
            }

            if (!name.compare("FMOV"))
            {
                args::regs1fimm64 args;
                input >> arg;
                std::cout << "\tFMOV " << arg;
                args.xx = get_reg(arg);
                input >> arg;
                std::cout << " " << arg << '\n';
                args.fimm64 = std::stod(arg);
                program.push_back(std::make_unique<instr::InstrFMOV>(instr_idx, name, args, *this));
                instr_idx++;
                continue;
            }

            if (!name.compare("IMUL") || !name.compare("IDIV") ||
                !name.compare("IADD") || !name.compare("ISUB"))
            {
                args::regs3 args;
                input >> arg;
                std::cout << "\t" << name << " " << arg;
                args.x1 = get_reg(arg);
                input >> arg;
                std::cout << " " << arg;
                args.x2 = get_reg(arg);
                input >> arg;
                std::cout << " " << arg << '\n';
                args.x3 = get_reg(arg);
                if (!name.compare("IMUL"))
                    program.push_back(std::make_unique<instr::InstrIMUL>(instr_idx, name, args, *this));
                else if (!name.compare("IDIV"))
                    program.push_back(std::make_unique<instr::InstrIDIV>(instr_idx, name, args, *this));
                else if (!name.compare("IADD"))
                    program.push_back(std::make_unique<instr::InstrIADD>(instr_idx, name, args, *this));
                else
                    program.push_back(std::make_unique<instr::InstrISUB>(instr_idx, name, args, *this));
                instr_idx++;
                continue;
            }
            if (!name.compare("IMULI") || !name.compare("IDIVI") ||
                !name.compare("IADDI") || !name.compare("ISUBI"))
            {
                args::regs2imm64 args;
                input >> arg;
                std::cout << "\t" << name << " " << arg;
                args.x1 = get_reg(arg);
                input >> arg;
                std::cout << " " << arg;
                args.x2 = get_reg(arg);
                input >> arg;
                std::cout << " " << arg << '\n';
                args.imm64 = get_imm64(arg);
                if (!name.compare("IMULI"))
                    program.push_back(std::make_unique<instr::InstrIMULI>(instr_idx, name, args, *this));
                else if (!name.compare("IDIVI"))
                    program.push_back(std::make_unique<instr::InstrIDIVI>(instr_idx, name, args, *this));
                else if (!name.compare("IADDI"))
                    program.push_back(std::make_unique<instr::InstrIADDI>(instr_idx, name, args, *this));
                else
                    program.push_back(std::make_unique<instr::InstrISUBI>(instr_idx, name, args, *this));
                instr_idx++;
                continue;
            }
            if (!name.compare("IMOVI"))
            {
                args::regs1imm64 args;
                input >> arg;
                std::cout << "\tIMOVI " << arg;
                args.xx = get_reg(arg);
                input >> arg;
                std::cout << " " << arg << '\n';
                args.imm64 = get_imm64(arg);
                program.push_back(std::make_unique<instr::InstrIMOVI>(instr_idx, name, args, *this));
                instr_idx++;
                continue;
            }
            if (!name.compare("IXCHG"))
            {
                args::regs2 args;
                input >> arg;
                std::cout << "\tIXCHG " << arg;
                args.x1 = get_reg(arg);
                input >> arg;
                std::cout << " " << arg << '\n';
                args.x2 = get_reg(arg);
                program.push_back(std::make_unique<instr::InstrIXCHG>(instr_idx, name, args, *this));
                instr_idx++;
                continue;
            }
            if (!name.compare("IGEQ") || !name.compare("ILE") ||
                !name.compare("IAND"))
            {
                args::regs3 args;
                input >> arg;
                std::cout << "\t" << name << " " << arg;
                args.x1 = get_reg(arg);
                input >> arg;
                std::cout << " " << arg;
                args.x2 = get_reg(arg);
                input >> arg;
                std::cout << " " << arg << '\n';
                args.x3 = get_reg(arg);
                if (!name.compare("IGEQ"))
                    program.push_back(std::make_unique<instr::InstrIGEQ>(instr_idx, name, args, *this));
                else if (!name.compare("ILE"))
                    program.push_back(std::make_unique<instr::InstrILE>(instr_idx, name, args, *this));
                else
                    program.push_back(std::make_unique<instr::InstrIAND>(instr_idx, name, args, *this));
                instr_idx++;
                continue;
            }
            if (!name.compare("IGEQI") || !name.compare("ILEI"))
            {
                args::regs2imm64 args;
                input >> arg;
                std::cout << "\t" << name << " " << arg;
                args.x1 = get_reg(arg);
                input >> arg;
                std::cout << " " << arg;
                args.x2 = get_reg(arg);
                input >> arg;
                std::cout << " " << arg << '\n';
                args.imm64 = get_imm64(arg);
                if (!name.compare("IGEQI"))
                    program.push_back(std::make_unique<instr::InstrIGEQI>(instr_idx, name, args, *this));
                else
                    program.push_back(std::make_unique<instr::InstrILEI>(instr_idx, name, args, *this));
                instr_idx++;
                continue;
            }
            if (!name.compare("INT2FLOAT") || !name.compare("FLOAT2INT"))
            {
                args::regs2 args;
                input >> arg;
                std::cout << "\t" << name << " " << arg;
                args.x1 = get_reg(arg);
                input >> arg;
                std::cout << " " << arg << '\n';
                args.x2 = get_reg(arg);
                if (!name.compare("INT2FLOAT"))
                    program.push_back(std::make_unique<instr::InstrINT2FLOAT>(instr_idx, name, args, *this));
                else
                    program.push_back(std::make_unique<instr::InstrFLOAT2INT>(instr_idx, name, args, *this));
                instr_idx++;
                continue;
            }
            if (!name.compare("MOV"))
            {
                args::regs1 args;
                input >> arg;
                std::cout << "\tMOV " << arg << " SP\n";
                args.xx = get_reg(arg);
                input >> arg;
                program.push_back(std::make_unique<instr::InstrMOV>(instr_idx, name, args, *this));
                instr_idx++;
                continue;
            }
            if (!name.compare("IMOVSP"))
            {
                args::regs2 args;
                input >> arg;
                std::cout << "\tIMOVSP " << arg;
                args.x1 = get_reg(arg);
                input >> arg;
                std::cout << " " << arg << '\n';
                args.x2 = get_reg(arg);
                program.push_back(std::make_unique<instr::InstrIMOVSP>(instr_idx, name, args, *this));
                instr_idx++;
                continue;
            }
            if (!name.compare("IMOVSPI"))
            {
                args::imm64regs1 args;
                input >> arg;
                std::cout << "\tIMOVSPI " << arg;
                args.imm64 = get_imm64(arg);
                input >> arg;
                std::cout << " " << arg << '\n';
                args.xx = get_reg(arg);
                program.push_back(std::make_unique<instr::InstrIMOVSPI>(instr_idx, name, args, *this));
                instr_idx++;
                continue;
            }
            if (!name.compare("GROW") || !name.compare("SHRINK"))
            {
                args::imm64 args;
                input >> arg;
                std::cout << "\t" << name << " " << arg << '\n';
                args.imm64 = get_imm64(arg);
                if (!name.compare("GROW"))
                    program.push_back(std::make_unique<instr::InstrGROW>(instr_idx, name, args, *this));
                else
                    program.push_back(std::make_unique<instr::InstrSHRINK>(instr_idx, name, args, *this));
                instr_idx++;
                continue;
            }
            if (!name.compare("INNER_GRID"))
            {
                args::regs2 args;
                input >> arg;
                std::cout << "\tINNER_GRID " << arg;
                args.x1 = get_reg(arg);
                input >> arg;
                std::cout << " " << arg << '\n';
                args.x2 = get_reg(arg);
                program.push_back(std::make_unique<instr::InstrINNER_GRID>(instr_idx, name, args, *this));
                instr_idx++;
                continue;
            }
            if (!name.compare("B") || !name.compare("LOOP"))
            {
                args::imm64 args;
                input >> arg;
                std::cout << '\t' << name << ' ' << arg << '\n';
                args.imm64 = labels[arg];
                program.push_back(std::make_unique<instr::InstrB>(instr_idx, name, args, *this));
                instr_idx++;
                continue;
            }
            if (!name.compare("IBNONZERO"))
            {
                args::imm64regs1 args;
                input >> arg;
                std::cout << '\t' << name << ' ' << arg << ' ';
                args.imm64 = labels[arg];
                input >> arg;
                std::cout << arg << '\n';
                args.xx = get_reg(arg);
                program.push_back(std::make_unique<instr::InstrIBNONZERO>(instr_idx, name, args, *this));
                instr_idx++;
                continue;
            }
            if (!name.compare("FBGE"))
            {
                args::imm64regs2 args;
                input >> arg;
                std::cout << '\t' << name << ' ' << arg << ' ';
                args.imm64 = labels[arg];
                input >> arg;
                std::cout << arg << ' ';
                args.x1 = get_reg(arg);
                input >> arg;
                std::cout << arg << '\n';
                args.x2 = get_reg(arg);
                program.push_back(std::make_unique<instr::InstrFBGE>(instr_idx, name, args, *this));
                instr_idx++;
                continue;
            }
            if (!name.compare("FBLE"))
            {
                args::imm64regs2 args;
                input >> arg;
                std::cout << '\t' << name << ' ' << arg << ' ';
                args.imm64 = labels[arg];
                input >> arg;
                std::cout << arg << ' ';
                args.x1 = get_reg(arg);
                input >> arg;
                std::cout << arg << '\n';
                args.x2 = get_reg(arg);
                program.push_back(std::make_unique<instr::InstrFBLE>(instr_idx, name, args, *this));
                instr_idx++;
                continue;
            }

            std::cout << name << '\n';
        }
    }

    void run(size_t starting_pc)
    {
        pc = starting_pc;
        is_running = true;
        while (is_running)
            program[pc]->run();
    }

    void run(const std::string &label)
    {
        run(labels[label]);
    }
};

#define DEFINE_INSTR(NAME, ...)            \
    void NAME::run_impl(args::args_t args) \
    {                                      \
        __VA_ARGS__                        \
    }

namespace instr
{
    uint64_t &InstrBase::ireg(int xx)
    {
        return proc.IREG_FILE[xx];
    }

    float64_t &InstrBase::freg(int xx)
    {
        return proc.FREG_FILE[xx];
    }

    std::vector<float64_t> &InstrBase::stack()
    {
        return proc.stack;
    }

    size_t &InstrBase::pc()
    {
        return proc.pc;
    }

    bool &InstrBase::is_running()
    {
        return proc.is_running;
    }

    void InstrBase::run()
    {
        proc.pc++;
        run_impl(args);
    }

    DEFINE_INSTR(InstrFSIN,
                 auto [x1, x2] = std::get<args::regs2>(args);
                 freg(x1) = simCalcSinus(freg(x2));)

    DEFINE_INSTR(InstrPUTPIXEL,
                 auto [x1, x2, x3] = std::get<args::regs3>(args);
                 uint64_t argb = ireg(x1);
                 uint64_t x = ireg(x2);
                 uint64_t y = ireg(x3);
                 simPutPixel(x, y, argb);)

    DEFINE_INSTR(InstrFLUSH,
                 simFlush();)

    DEFINE_INSTR(InstrHAS_CLICK,
                 auto [xx] = std::get<args::regs1>(args);
                 ireg(xx) = simHasClick();)

    DEFINE_INSTR(InstrGET_CLICK,
                 auto [x1, x2] = std::get<args::regs2>(args);
                 int xy = simGetClick();
                 int x = xy >> 16;
                 int y = xy & 0xFFFF;
                 ireg(x1) = x;
                 ireg(x2) = y;)

    DEFINE_INSTR(InstrHAS_SCROLL,
                 auto [xx] = std::get<args::regs1>(args);
                 ireg(xx) = simHasScroll();)

    DEFINE_INSTR(InstrGET_SCROLL,
                 auto [xx] = std::get<args::regs1>(args);
                 ireg(xx) = simGetScroll();)

    DEFINE_INSTR(InstrRCELL,
                 auto [x1, x2, x3] = std::get<args::regs3>(args);
                 uint64_t x = ireg(x2);
                 uint64_t y = ireg(x3);
                 uint64_t addr = ireg(x1);
                 freg(0) = stack()[addr + SIM_Y_SIZE * x + y];)

    DEFINE_INSTR(InstrWCELL,
                 auto [x1, x2, x3] = std::get<args::regs3>(args);
                 uint64_t x = ireg(x2);
                 uint64_t y = ireg(x3);
                 uint64_t addr = ireg(x1);
                 stack()[addr + SIM_Y_SIZE * x + y] = freg(0);)

    DEFINE_INSTR(InstrFSAT,
                 auto [x1] = std::get<args::regs1>(args);
                 constexpr float64_t LIMIT = 10.0;
                 float64_t u = freg(x1);
                 if (u > LIMIT)
                     u = LIMIT;
                 else if (u < -LIMIT)
                     u = -LIMIT;
                 freg(x1) = u;)

    DEFINE_INSTR(InstrFMUL,
                 auto [x1, x2, x3] = std::get<args::regs3>(args);
                 float64_t fx2 = freg(x2);
                 float64_t fx3 = freg(x3);
                 freg(x1) = fx2 * fx3;)

    DEFINE_INSTR(InstrFDIV,
                 auto [x1, x2, x3] = std::get<args::regs3>(args);
                 float64_t fx2 = freg(x2);
                 float64_t fx3 = freg(x3);
                 freg(x1) = fx2 / fx3;)

    DEFINE_INSTR(InstrFADD,
                 auto [x1, x2, x3] = std::get<args::regs3>(args);
                 float64_t fx2 = freg(x2);
                 float64_t fx3 = freg(x3);
                 freg(x1) = fx2 + fx3;)

    DEFINE_INSTR(InstrFSUB,
                 auto [x1, x2, x3] = std::get<args::regs3>(args);
                 float64_t fx2 = freg(x2);
                 float64_t fx3 = freg(x3);
                 freg(x1) = fx2 - fx3;)

    DEFINE_INSTR(InstrFTONE,
                 auto [xx, yy] = std::get<args::regs2>(args);
                 constexpr float64_t LIMIT = 10.0;
                 float64_t u = freg(yy);
                 float64_t alpha = (u + LIMIT) / (2 * LIMIT);
                 int tone = (int)(alpha * 255) & 0xFF;
                 int argb = tone | (tone << 8) | (tone << 16) | (0xFF << 24);
                 ireg(xx) = argb;)

    DEFINE_INSTR(InstrFMOV,
                 auto [xx, fimm64] = std::get<args::regs1fimm64>(args);
                 freg(xx) = fimm64;)

    DEFINE_INSTR(InstrIMUL,
                 auto [x1, x2, x3] = std::get<args::regs3>(args);
                 uint64_t fx2 = ireg(x2);
                 uint64_t fx3 = ireg(x3);
                 ireg(x1) = fx2 * fx3;)

    DEFINE_INSTR(InstrIDIV,
                 auto [x1, x2, x3] = std::get<args::regs3>(args);
                 uint64_t fx2 = ireg(x2);
                 uint64_t fx3 = ireg(x3);
                 if (fx3 == 0) throw std::runtime_error("IDIV: division by zero");
                 ireg(x1) = fx2 / fx3;)

    DEFINE_INSTR(InstrIADD,
                 auto [x1, x2, x3] = std::get<args::regs3>(args);
                 uint64_t fx2 = ireg(x2);
                 uint64_t fx3 = ireg(x3);
                 ireg(x1) = fx2 + fx3;)

    DEFINE_INSTR(InstrISUB,
                 auto [x1, x2, x3] = std::get<args::regs3>(args);
                 uint64_t fx2 = ireg(x2);
                 uint64_t fx3 = ireg(x3);
                 ireg(x1) = fx2 - fx3;)

    DEFINE_INSTR(InstrIMULI,
                 auto [x1, x2, imm64] = std::get<args::regs2imm64>(args);
                 uint64_t fx2 = ireg(x2);
                 uint64_t fx3 = imm64;
                 ireg(x1) = fx2 * fx3;)

    DEFINE_INSTR(InstrIDIVI,
                 auto [x1, x2, imm64] = std::get<args::regs2imm64>(args);
                 uint64_t fx2 = ireg(x2);
                 uint64_t fx3 = imm64;
                 if (fx3 == 0) throw std::runtime_error("IDIVI: division by zero");
                 ireg(x1) = fx2 / fx3;)

    DEFINE_INSTR(InstrIADDI,
                 auto [x1, x2, imm64] = std::get<args::regs2imm64>(args);
                 uint64_t fx2 = ireg(x2);
                 uint64_t fx3 = imm64;
                 ireg(x1) = fx2 + fx3;)

    DEFINE_INSTR(InstrISUBI,
                 auto [x1, x2, imm64] = std::get<args::regs2imm64>(args);
                 uint64_t fx2 = ireg(x2);
                 uint64_t fx3 = imm64;
                 ireg(x1) = fx2 - fx3;)

    DEFINE_INSTR(InstrIMOVI,
                 auto [xx, imm64] = std::get<args::regs1imm64>(args);
                 ireg(xx) = imm64;)

    DEFINE_INSTR(InstrIXCHG,
                 auto [x1, x2] = std::get<args::regs2>(args);
                 std::swap(ireg(x1), ireg(x2));)

    DEFINE_INSTR(InstrIGEQ,
                 auto [x1, x2, x3] = std::get<args::regs3>(args);
                 uint64_t fx2 = ireg(x2);
                 uint64_t fx3 = ireg(x3);
                 ireg(x1) = (fx2 >= fx3);)

    DEFINE_INSTR(InstrILE,
                 auto [x1, x2, x3] = std::get<args::regs3>(args);
                 uint64_t fx2 = ireg(x2);
                 uint64_t fx3 = ireg(x3);
                 ireg(x1) = (fx2 < fx3);)

    DEFINE_INSTR(InstrIGEQI,
                 auto [x1, x2, imm64] = std::get<args::regs2imm64>(args);
                 uint64_t fx2 = ireg(x2);
                 uint64_t fx3 = imm64;
                 ireg(x1) = (fx2 >= fx3);)

    DEFINE_INSTR(InstrILEI,
                 auto [x1, x2, imm64] = std::get<args::regs2imm64>(args);
                 uint64_t fx2 = ireg(x2);
                 uint64_t fx3 = imm64;
                 ireg(x1) = (fx2 < fx3);)

    DEFINE_INSTR(InstrIAND,
                 auto [x1, x2, x3] = std::get<args::regs3>(args);
                 uint64_t fx2 = ireg(x2);
                 uint64_t fx3 = ireg(x3);
                 ireg(x1) = (fx2 && fx3);)

    DEFINE_INSTR(InstrINT2FLOAT,
                 auto [yy, xx] = std::get<args::regs2>(args);
                 freg(yy) = ireg(xx);)

    DEFINE_INSTR(InstrFLOAT2INT,
                 auto [xx, yy] = std::get<args::regs2>(args);
                 ireg(xx) = freg(yy);)

    DEFINE_INSTR(InstrMOV,
                 auto [xx] = std::get<args::regs1>(args);
                 ireg(xx) = stack().size();)

    DEFINE_INSTR(InstrIMOVSP,
                 auto [x1, x2] = std::get<args::regs2>(args);
                 uint64_t addr = stack().size() - 1 - ireg(x1);
                 stack()[addr] = ireg(x2);)

    DEFINE_INSTR(InstrIMOVSPI,
                 auto [imm64, xx] = std::get<args::imm64regs1>(args);
                 uint64_t addr = stack().size() - 1 - imm64;
                 stack()[addr] = ireg(xx);)

    DEFINE_INSTR(InstrGROW,
                 auto [imm64] = std::get<args::imm64>(args);
                 stack().resize(stack().size() + imm64);)

    DEFINE_INSTR(InstrSHRINK,
                 auto [imm64] = std::get<args::imm64>(args);
                 if (imm64 > stack().size()) throw std::runtime_error("not enough memory in stack");
                 stack().resize(stack().size() - imm64);)

    DEFINE_INSTR(InstrINNER_GRID,
                 auto [x1, x2] = std::get<args::regs2>(args);
                 constexpr float64_t COURANT_NUMBER_SQR = 1.0 / 10.0;

                 uint64_t grid1 = ireg(1), grid2 = ireg(2);
                 uint64_t x = ireg(x1), y = ireg(x2);
                 float64_t g1xy = stack()[grid1 + SIM_Y_SIZE * x + y];
                 float64_t g2xy = stack()[grid2 + SIM_Y_SIZE * x + y];
                 float64_t g1xp1y = stack()[grid1 + SIM_Y_SIZE * (x + 1) + y];
                 float64_t g1xm1y = stack()[grid1 + SIM_Y_SIZE * (x - 1) + y];
                 float64_t g1xyp1 = stack()[grid1 + SIM_Y_SIZE * x + y + 1];
                 float64_t g1xym1 = stack()[grid1 + SIM_Y_SIZE * x + y - 1];

                 float64_t time_term = 2 * g1xy - g2xy;
                 float64_t space_term =
                     g1xp1y + g1xm1y + g1xyp1 + g1xym1 - 4 * g1xy;

                 stack()[grid2 + SIM_Y_SIZE * x + y] =
                     time_term + COURANT_NUMBER_SQR * space_term;)

    DEFINE_INSTR(InstrFBGE,
                 auto [imm64, x1, x2] = std::get<args::imm64regs2>(args);
                 if (freg(x1) > freg(x2))
                     pc() = imm64;)

    DEFINE_INSTR(InstrFBLE,
                 auto [imm64, x1, x2] = std::get<args::imm64regs2>(args);
                 if (freg(x1) < freg(x2))
                     pc() = imm64;)

    DEFINE_INSTR(InstrIBNONZERO,
                 auto [imm64, xx] = std::get<args::imm64regs1>(args);
                 if (ireg(xx) != 0)
                     pc() = imm64;)

    DEFINE_INSTR(InstrB,
                 auto [imm64] = std::get<args::imm64>(args);
                 pc() = imm64;)

    DEFINE_INSTR(InstrEXIT,
                 is_running() = false;)
};

int main(int argc, char *argv[])
{
    if (argc != 2)
    {
        std::cout << "[ERROR] Need 1 argument: file with assembler code\n";
        return 1;
    }
    Processor proc;
    proc.load(argv[1]);

    simInit();

    proc.run("begin");

    simExit();
    return EXIT_SUCCESS;
}