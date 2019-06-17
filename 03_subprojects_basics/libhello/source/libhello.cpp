#include "libhello.h"
#define STRINGIFY2(X) #X
#define STRINGIFY(X) STRINGIFY2(X)

#ifndef WHO
#define WHO World
#endif

std::string get_string() {
	return(STRINGIFY(WHO));
}

