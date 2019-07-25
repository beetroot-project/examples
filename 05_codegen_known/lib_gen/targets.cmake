set(ENUM_TEMPLATES CODEGEN1_GEN)

set(TARGET_PARAMETERS 
	SOURCE_OUT	SCALAR	PATH "generated_source"
)

set(FILE_OPTIONS NO_TARGETS)

function(apply_dependency_to_target DEPENDEE_TARGET_NAME OUR_TARGET_NAME)
	get_target_property(DEPENDEE_BINARY_DIR ${DEPENDEE_TARGET_NAME} BINARY_DIR)
	#Not used here, but kept as a code reference:
	get_target_property(DEPENDEE_SOURCE_DIR ${DEPENDEE_TARGET_NAME} SOURCE_DIR)
	
	find_package(Python3 COMPONENTS Interpreter REQUIRED)
	set(Python_EXECUTABLE "${Python3_EXECUTABLE}")

	add_custom_command(
		OUTPUT "${DEPENDEE_BINARY_DIR}/${SOURCE_OUT}.cpp"
		COMMAND ${Python_EXECUTABLE} ${CMAKE_CURRENT_SOURCE_DIR}/generator.py -o ${SOURCE_OUT} -s "Hello!"
		WORKING_DIRECTORY ${DEPENDEE_BINARY_DIR}
		COMMENT "Generating file ${SOURCE_OUT}..."
		VERBATIM
	)
	target_include_directories(${DEPENDEE_TARGET_NAME} PRIVATE ${DEPENDEE_BINARY_DIR})
	target_sources(${DEPENDEE_TARGET_NAME} ${KEYWORD} ${SOURCE_OUT}.cpp)
endfunction()

