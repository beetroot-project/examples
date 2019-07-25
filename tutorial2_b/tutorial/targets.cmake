set(ENUM_TEMPLATES TUTORIAL2)

include_build_parameters_of(VERSION )

set(BUILD_PARAMETERS
	USE_MYMATH	SCALAR BOOL 0
)

function(declare_dependencies TEMPLATE_NAME)
	if (USE_MYMATH)
	   build_target(MathFunctions)
	endif (USE_MYMATH)
   build_target(VERSION)
endfunction()

function(generate_targets TARGET_NAME)
	add_executable(${TARGET_NAME} ${CMAKE_CURRENT_SOURCE_DIR}/tutorial.cxx)
	
endfunction()

