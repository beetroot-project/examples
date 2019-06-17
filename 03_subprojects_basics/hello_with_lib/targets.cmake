set(ENUM_TEMPLATES HELLO_WITH_LIB)

function(declare_dependencies TEMPLATE_NAME)
   build_target(LIBHELLO WHO "Saturn")
endfunction()

function(generate_targets TEMPLATE_NAME)
   add_executable(${TARGET_NAME} "${CMAKE_CURRENT_SOURCE_DIR}/hello_with_lib.cpp")
endfunction()

