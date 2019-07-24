set(ENUM_TEMPLATES GENERIC_CONFIGURE)

set(TARGET_PARAMETERS 
	INPUT_FILENAME	SCALAR	STRING ""
	ARGLIST	VECTOR	STRING ""
	PARLIST_OPTIONS VECTOR STRING ""
	PARLIST_SCALARS VECTOR STRING ""
	PARLIST_VECTORS VECTOR STRING ""
)

set(TEMPLATE_OPTIONS
	NO_TARGETS
)

function(apply_dependency_to_target DEPENDEE_TARGET_NAME OUR_TARGET_NAME)
	get_target_property(DEPENDEE_BINARY_DIR ${DEPENDEE_TARGET_NAME} BINARY_DIR)
	get_filename_component(OUTPUT_FILENAME "${INPUT_FILENAME}" NAME)
	
	set(INPUT_FILENAME "${SUPERBUILD_ROOT}/${INPUT_FILENAME}.in")
	set(OUTPUT_FILENAME "${DEPENDEE_BINARY_DIR}/${OUTPUT_FILENAME}")
	
#	message(WARNING "PARLIST_SCALARS: ${PARLIST_SCALARS}")

#	string(REPLACE " " ";" ARGLIST ${ARGLIST})
#	message(STATUS "ARGLIST: " ${ARGLIST})
	cmake_parse_arguments("" "${PARLIST_OPTIONS}" "${PARLIST_SCALARS}"
                          "${PARSLIST_VECTORS}" ${ARGLIST} )
#	message(STATUS	"cmake_parse_arguments(\"\" \"${PARLIST_OPTIONS}\" \"${PARLIST_SCALARS}\" \"${PARSLIST_VECTORS}\" ${ARGLIST})")
#	message(STATUS "_MAX_FILENAME_LEN: ${_MAX_FILENAME_LEN}")
	configure_file("${INPUT_FILENAME}" "${OUTPUT_FILENAME}" @ONLY)
	
#	message(STATUS "apply_dependency_to_target(): target_sources(${DEPENDEE_TARGET_NAME} ${KEYWORD} \"${OUTPUT_FILENAME}\")")
	target_sources(${DEPENDEE_TARGET_NAME} ${KEYWORD} "${OUTPUT_FILENAME}")
endfunction()

