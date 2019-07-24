set(ENUM_TEMPLATES CHECK)

function(declare_dependencies TEMPLATE_NAME)
  	build_target(check_configure MAX_FILENAME_LEN 25)
	build_target(BOOST COMPONENT filesystem)
endfunction()

function(generate_targets TARGET_NAME TEMPLATE_NAME)
#	message(STATUS "TEMPLATE_NAME=${TEMPLATE_NAME}" )
	add_executable(${TARGET_NAME})
endfunction()
