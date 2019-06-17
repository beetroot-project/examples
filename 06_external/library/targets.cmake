set(ENUM_TEMPLATES INDIA)

set(TEMPLATE_OPTIONS
	LANGUAGES C
)

function(generate_targets TEMPLATE_NAME)
   add_executable(${TARGET_NAME} "${CMAKE_CURRENT_SOURCE_DIR}/libsource.c")
endfunction()


