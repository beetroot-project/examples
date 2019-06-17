cmake_minimum_required(VERSION 3.13)
include(../cmake/beetroot/cmake/beetroot.cmake)
project (Tutorial)

set (Tutorial_VERSION_MAJOR 1)

build_target(Tutorial Tutorial_VERSION_MINOR 0)

finalize()
