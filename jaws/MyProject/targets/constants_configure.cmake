set(ENUM_TARGETS constants_configure constants_tu_configure)

include_target_parameters_of(VERSION) #VERSIONS

set(FILE_OPTIONS
	NO_TARGETS
)

function(apply_dependency_to_target DEPENDEE_TARGET_NAME OUR_TARGET_NAME)
	if("${OUR_TARGET_NAME}" STREQUAL "constants_configure")
		set(INPUT_FILENAME "MyProject/core/src/Constants.cpp")
	elseif("${OUR_TARGET_NAME}" STREQUAL "constants_tu_configure")
		set(INPUT_FILENAME "MyProject/core/test/ConstantsTu.cpp")
	else()
		message(FATAL_ERROR "Unknown target: ${OUR_TARGET_NAME}")
	endif()
	
	get_target_property(DEPENDEE_BINARY_DIR ${DEPENDEE_TARGET_NAME} BINARY_DIR)
	get_filename_component(OUTPUT_FILENAME "${INPUT_FILENAME}" NAME)

	set(INPUT_FILENAME "${SUPERBUILD_ROOT}/${INPUT_FILENAME}.in")
	set(OUTPUT_FILENAME "${DEPENDEE_BINARY_DIR}/${OUTPUT_FILENAME}")

	configure_file("${INPUT_FILENAME}" "${OUTPUT_FILENAME}" @ONLY)

#	message(WARNING "apply_dependency_to_target(): target_sources(${DEPENDEE_TARGET_NAME} ${KEYWORD} \"${OUTPUT_FILENAME}\")")
	target_sources(${DEPENDEE_TARGET_NAME} ${KEYWORD} "${OUTPUT_FILENAME}")
	target_include_directories(${DEPENDEE_TARGET_NAME} PRIVATE ${CMAKE_BINARY_DIR})
endfunction()

