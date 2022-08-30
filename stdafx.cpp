// stdafx.cpp : source file that includes just the standard includes
// primemod1.pch will be the pre-compiled header
// stdafx.obj will contain the pre-compiled type information

#if defined(_WIN32) && !defined(__linux__)
#include "stdafx.h"

#elif defined(__linux__) && !defined(_WIN32)
#include <inttypes.h>
typedef int64_t __int64;
#else

#endif

// TODO: reference any additional headers you need in STDAFX.H
// and not in this file
