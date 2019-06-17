cmake_minimum_required(VERSION 3.13)
include(../cmake/beetroot/cmake/beetroot.cmake)


project(hello_simple)

build_target(HELLO_SIMPLE)
set(WHO "Venus")
build_target(HELLO_SIMPLE)
build_target(HELLO_SIMPLE WHO Mars)

finalize()
