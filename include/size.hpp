#pragma once

#include <cstdint>

template<class T>
struct SizeDisplayer
{

};


template<class T>
uint64_t display(SizeDisplayer<T>*)
{
    return sizeof(T);
}