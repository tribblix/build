/*
 * The default gmp installation installs a wordsize-specific gmp.h
 * with the result that you are unable to build against one wordsize
 * or other.
 *
 * This idea filched from Fedora, relying on the install putting
 * the real include files with different names
 */

#ifdef _LP64
#include "gmp-64.h"
#else
#include "gmp-32.h"
#endif
