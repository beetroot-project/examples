cmake_minimum_required(VERSION 3.13)
include(../cmake/beetroot/cmake/beetroot.cmake)
project (Tutorial)

option (USE_MYMATH 
        "Use tutorial provided math implementation" ON) 

set (Tutorial_VERSION_MAJOR 2)
set (Tutorial_VERSION_MINOR 0)
build_target(TUTORIAL2 USE_MYMATH 1)
build_target(TUTORIAL2 USE_MYMATH 0)

finalize()
