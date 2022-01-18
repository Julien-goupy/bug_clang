#include "size.hpp"
#include <cstdio>

// 8 bytes
struct StructInTranslationUnit1
{
    uint64_t a;
};

static SizeDisplayer<StructInTranslationUnit1> _s;

void print_t1()
{
    printf("Size is %lu\n", display(&_s));
}