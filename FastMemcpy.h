
#ifndef __AARCH64_ASM_H__
#define __AARCH64_ASM_H__

#include <stdint.h>

#ifdef __cplusplus
extern "C" {
#endif

void memcpy_fast(void * __restrict dst,
                                       void * __restrict src,
                                       int                  size);

#ifdef __cplusplus
}
#endif

#endif
