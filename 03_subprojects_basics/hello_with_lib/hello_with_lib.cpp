#include <iostream>
#include "libhello.h"

#ifndef LIBPAR
#define LIBPAR 0
#endif

int main()
{
  int libpar = LIBPAR;
  
  std::cout << "Hello "<< get_string()<<"!"<< std::endl;
  return 0;
}

