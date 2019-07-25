set(ENUM_TEMPLATES INDIA)

set(FILE_OPTIONS
	LANGUAGES C
)

function(generate_targets TARGET_NAME TEMPLATE_NAME)
   add_executable(${TARGET_NAME} "${CMAKE_CURRENT_SOURCE_DIR}/libsource.c")
endfunction()


