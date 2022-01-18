#include "size.hpp"
#include <cstdio>

// 32 bytes
struct StructInTranslationUnit1
{
    uint64_t a;
    uint64_t b;
    uint64_t c;
    uint64_t d;
};

static SizeDisplayer<StructInTranslationUnit1> _s;


void print_t2()
{
    printf("Size is %lu\n", display(&_s));
}