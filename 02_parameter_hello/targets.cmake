set(ENUM_TEMPLATES HELLO_SIMPLE)

set(TARGET_PARAMETERS 
   WHO SCALAR STRING "Beetroot"
)

function(generate_targets TEMPLATE_NAME)
   add_executable(${TARGET_NAME} "${CMAKE_CURRENT_SOURCE_DIR}/source.cpp")
   target_compile_definitions(${TARGET_NAME} PRIVATE "WHO=${WHO}")
endfunction()
