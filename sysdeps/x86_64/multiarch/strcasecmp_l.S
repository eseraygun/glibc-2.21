/* Multiple versions of strcasecmp and strcasecmp_l
   All versions must be listed in ifunc-impl-list.c.  */
#define STRCMP __strcasecmp_l
#define USE_AS_STRCASECMP_L
#include "strcmp.S"

weak_alias (__strcasecmp_l, strcasecmp_l)
libc_hidden_def (strcasecmp_l)
