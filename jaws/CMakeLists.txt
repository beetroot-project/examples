cmake_minimum_required(VERSION 3.13)
include(../cmake/beetroot/cmake/beetroot.cmake)

project(MyProject)

set(ENABLE_TESTS 1)
enable_testing()
set(CMAKE_TESTING_ENABLED 1)

message(WARNING "BUILD_TESTING: ${BUILD_TESTING}")

option( GUI      "Compile with GUI support. Default: OFF." OFF )
option( BUILD_TESTING "Build unit tests. Default: OFF" OFF)


build_target(MyProject)
build_target(CHECK)

build_target(MyProject GUI)

finalize()

#set(EXPORT_FILE_NAME "${CMAKE_BINARY_DIR}/${PROJECT_NAME}_export.h")
#include( GenerateExportHeader )
#message(STATUS "generate_export_header( ${PROJECT_NAME} EXPORT_FILE_NAME \"${EXPORT_FILE_NAME}\" )")
#generate_export_header( ${PROJECT_NAME} EXPORT_FILE_NAME "${EXPORT_FILE_NAME}" )
#
#if(SHARED)
#	target_compile_definitions(${DEPENDEE_TARGET_NAME} "${PROJECT_NAME}_STATIC_DEFINE")
#endif()

