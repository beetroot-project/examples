set(ENUM_TEMPLATES VERSION)

set(TARGET_PARAMETERS 
	Tutorial_VERSION_MAJOR	SCALAR	INTEGER "0"
	Tutorial_VERSION_MINOR	SCALAR	INTEGER "0" 
)

set(FILE_OPTIONS NO_TARGETS)

function(apply_dependency_to_target DEPENDEE_TARGET_NAME OUR_TARGET_NAME)
# configure a header file to pass some of the CMake settings
# to the source code
	configure_file (
	   "${CMAKE_CURRENT_SOURCE_DIR}/TutorialConfig.h.in"
	   "${CMAKE_CURRENT_BINARY_DIR}/TutorialConfig.h")
#	   message(FATAL_ERROR "")
	target_include_directories(${DEPENDEE_TARGET_NAME} PUBLIC "${CMAKE_CURRENT_BINARY_DIR}")
endfunction()
