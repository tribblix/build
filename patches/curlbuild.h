/*
 * The default curl installation installs a wordsize-specific curlbuild.h
 * with the result that you are unable to build against one wordsize
 * or other.
 *
 * This idea filched from Fedora, relying on the install putting
 * the real include files with different names
 */

#ifdef _LP64
#include "curlbuild-64.h"
#else
#include "curlbuild-32.h"
#endif
