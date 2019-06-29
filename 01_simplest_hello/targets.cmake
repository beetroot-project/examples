set(ENUM_TEMPLATES HELLO_SIMPLE)

function(generate_targets TARGET_NAME TEMPLATE_NAME)
   add_executable(${TARGET_NAME} "${CMAKE_CURRENT_SOURCE_DIR}/source.cpp")
endfunction()

