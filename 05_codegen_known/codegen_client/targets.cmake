set(ENUM_TEMPLATES CODEGEN1_CLIENT)

function(declare_dependencies TEMPLATE_NAME)
   build_target(CODEGEN1_GEN SOURCE_OUT my_generated_source)
endfunction()

function(generate_targets TARGET_NAME TEMPLATE_NAME)
   add_executable(${TARGET_NAME} "${CMAKE_CURRENT_SOURCE_DIR}/codegen1_client.cpp")
endfunction()

