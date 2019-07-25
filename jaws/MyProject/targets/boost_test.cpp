set(ENUM_TARGETS Boost::unit_test)

set(FILE_OPTIONS
	NICE_NAME "Boost Unit test library"
	DONT_LINK_TO_DEPENDEE
	NO_TARGETS
)

function(apply_dependency_to_target DEPENDEE_TARGET_NAME TARGET_NAME)
	find_package( wxWidgets 2.9.0 )
	include( ${wxWidgets_USE_FILE} )
	target_link_libraries(${DEPENDEE_TARGET_NAME} ${KEYWORD} ${wxWidgets_LIBRARIES})
endfunction()
