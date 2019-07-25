set(ENUM_TEMPLATES MAYBE_TESTED)

#message(STATUS "TARGET_NAME: ${TARGET_NAME}")

include_target_parameters_of("${TARGET_NAME}")
include_features_of("${TARGET_NAME}")
include_link_parameters_of("${TARGET_NAME}")

set(BUILD_PARAMETERS 
	TARGET_NAME	SCALAR	STRING ""
	UNIT_TEST	SCALAR	STRING ""
)

set(FILE_OPTIONS
	NO_TARGETS
)

function(declare_dependencies TEMPLATE_NAME)
	if("${TARGET_NAME}" STREQUAL "")
		message(FATAL_ERROR "Empty argument TARGET not allowed")
	endif()
	if("${UNIT_TEST}" STREQUAL "")
		message(FATAL_ERROR "Empty argument UNIT_TEST not allowed")
	endif()
#	message(WARNING "CMAKE_TESTING_ENABLED: ${CMAKE_TESTING_ENABLED}")
  	if(CMAKE_TESTING_ENABLED)
  		build_target(${UNIT_TEST})
  	endif()
  	build_target(${TARGET_NAME})
endfunction()
