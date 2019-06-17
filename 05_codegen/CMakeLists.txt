cmake_minimum_required(VERSION 3.13)
include(../cmake/beetroot/cmake/beetroot.cmake)


project(hello_simple)

build_target(CODEGEN_CLIENT)

finalize()
