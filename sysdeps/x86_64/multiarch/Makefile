ifeq ($(subdir),csu)
aux += init-arch
tests += test-multiarch
gen-as-const-headers += ifunc-defines.sym
endif

ifeq ($(subdir),string)

sysdep_routines += strncat-c stpncpy-c strncpy-c strcmp-ssse3 \
		   strcmp-sse2-unaligned strncmp-ssse3 \
		   memcmp-sse4 memcpy-ssse3 \
		   memcpy-sse2-unaligned mempcpy-ssse3 \
		   memmove-ssse3 memcpy-ssse3-back mempcpy-ssse3-back \
		   memmove-avx-unaligned memcpy-avx-unaligned mempcpy-avx-unaligned \
		   memmove-ssse3-back strcasecmp_l-ssse3 \
		   strncase_l-ssse3 strcat-ssse3 strncat-ssse3\
		   strcpy-ssse3 strncpy-ssse3 stpcpy-ssse3 stpncpy-ssse3 \
		   strcpy-sse2-unaligned strncpy-sse2-unaligned \
		   stpcpy-sse2-unaligned stpncpy-sse2-unaligned \
		   strcat-sse2-unaligned strncat-sse2-unaligned \
		   strchr-sse2-no-bsf memcmp-ssse3 strstr-sse2-unaligned

ifeq (yes,$(config-cflags-sse4))
sysdep_routines += strcspn-c strpbrk-c strspn-c varshift
CFLAGS-varshift.c += -msse4
CFLAGS-strcspn-c.c += -msse4
CFLAGS-strpbrk-c.c += -msse4
CFLAGS-strspn-c.c += -msse4
endif

ifeq (yes,$(config-cflags-avx2))
sysdep_routines += memset-avx2
endif
endif

ifeq ($(subdir),wcsmbs)
sysdep_routines += wmemcmp-sse4 wmemcmp-ssse3 wmemcmp-c wcscpy-ssse3 wcscpy-c
endif
