set(ENUM_TEMPLATES TUTORIAL2)

include_target_parameters_of(VERSION )

set(TARGET_PARAMETERS
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

	# does the application run
	add_test (TutorialRuns ${TARGET_NAME} 25)
	# does it sqrt of 25
	add_test (TutorialComp25 ${TARGET_NAME} 25)
	set_tests_properties (TutorialComp25 PROPERTIES PASS_REGULAR_EXPRESSION "25 is 5")
	# does it handle negative numbers
	add_test (TutorialNegative ${TARGET_NAME} -25)
	set_tests_properties (TutorialNegative PROPERTIES PASS_REGULAR_EXPRESSION "-25 is -nan")
	# does it handle small numbers
	add_test (TutorialSmall ${TARGET_NAME} 0.0001)
	set_tests_properties (TutorialSmall PROPERTIES PASS_REGULAR_EXPRESSION "0.0001 is 0.01")
	# does the usage message work?
	add_test (TutorialUsage ${TARGET_NAME})
	set_tests_properties (TutorialUsage PROPERTIES PASS_REGULAR_EXPRESSION "Usage:.*number")
	
	install (TARGETS ${TARGET_NAME} DESTINATION bin)

endfunction()

