#include <stdio.h>
#include <stdarg.h>

#define CC_LIM (100000)
#define STR_HELPER(x) #x
#define STR(x) STR_HELPER(x)

static int cc = 0;

static FILE *user_track = 0, *simple_track = 0;

void logUserOperand(long long instr_id, char *operand, int count, ...) {
    if (cc == CC_LIM && user_track && simple_track) {
        fclose(user_track);
        fclose(simple_track);
        user_track = simple_track = 0;
    }
    if (cc >= CC_LIM) return;

    if (!user_track || !simple_track) {
        user_track = fopen("user_track_" STR(OPTIM_LEVEL) ".log", "w");
        simple_track = fopen("simple_track_" STR(OPTIM_LEVEL) ".log", "w");
    }

    cc++;

    fprintf(simple_track, "%d {%llX} %s\n", cc, instr_id, operand);

    va_list args;
    va_start(args, count);

    fprintf(user_track, "[[  LOG  ]] % 6d  {%llX} %s", cc, instr_id, operand);
    if (count == 0) {
        fprintf(user_track, "\n");
        return;
    }
    else fprintf(user_track, " ->");

    while(count-- > 1) {
        char *user = va_arg(args, char *);
        fprintf(user_track, " %s,", user);
    }
    
    char *last_user = va_arg(args, char *);
    fprintf(user_track, " %s\n", last_user);
}