set(ENUM_TEMPLATES CODEGEN_CLIENT)

function(declare_dependencies TEMPLATE_NAME)
   build_target(LIB_GEN SOURCE "${CMAKE_CURRENT_SOURCE_DIR}/src.template")
endfunction()

function(generate_targets TARGET_NAME TEMPLATE_NAME)
   add_executable(${TARGET_NAME} "${CMAKE_CURRENT_SOURCE_DIR}/hello_with_lib.cpp")
   target_compile_definitions(${TARGET_NAME} PRIVATE "WHO=${WHO}") # ${WHO} is now available and can be used as a compile option
endfunction()

