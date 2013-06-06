#include "EXTERN.h"
#include "perl.h"
#include "XSUB.h"

// ----------

#include <sys/param.h>
#include <limits.h>


SV* MY_realpath (SV* path) {
    int path_max;
    char* outbuf;
    SV* res;
#ifdef PATH_MAX
    path_max = PATH_MAX;
#else
    path_max = pathconf (SvPV_nolen(path), _PC_PATH_MAX);
    if (path_max <= 0)
	path_max = 4096;
#endif
    outbuf= malloc(path_max);
    if (!outbuf)
	croak("realpath: could not allocate memory (%i bytes)", path_max);
    {
	char* rv= realpath(SvPV_nolen(path),outbuf);
	if (!rv) {
	    res= &PL_sv_undef;
	} else {
	    res= newSVpv(outbuf,0);
	}
    }
 ret:
    free(outbuf);
    return res;
}

SV* MY_xrealpath (SV* path) {
    SV*sv= MY_realpath(path);
    if (sv==&PL_sv_undef)
	// if errno ...
	croak("xrealpath(%s): %s",SvPV_nolen(path),strerror(errno));
    return sv;
}


// ----------


MODULE = Chj::Cwd::realpath        PACKAGE = Chj::Cwd::realpath    PREFIX = MY_

PROTOTYPES: DISABLE


SV *
MY_realpath (path)
        SV *    path

SV *
MY_xrealpath (path)
        SV *    path

