//# name = db
//# default
#include "transaltion_unit_1.hpp"
#include "transaltion_unit_2.hpp"

/*
    In reality both struct in both translation unit have the same name.
    And the following code does not compile to the correct result.

    NB: With optimization flag, it does compile to the correct code.
*/



int main(int argc, char** argv)
{
    print_t1();
    print_t2();

    return 0;
}