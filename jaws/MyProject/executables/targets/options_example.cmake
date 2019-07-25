set(ENUM_TEMPLATES OPTIONS_EXAMPLE)

include_build_parameters_of(VERSION) #VERSIONS

function(declare_dependencies TEMPLATE_NAME)
   build_target(MAYBE_TESTED 
   	TARGET_NAME CORE 
   	UNIT_TEST CORE_TEST) #Includes CORE and perhaps also its unit test
	build_target(BOOST COMPONENT program_options)
endfunction()

function(generate_targets TARGET_NAME TEMPLATE_NAME)
#	message(FATAL_ERROR "CMAKE_CURRENT_SOURCE_DIR: ${CMAKE_CURRENT_SOURCE_DIR}")
   add_executable(${TARGET_NAME} "${CMAKE_CURRENT_SOURCE_DIR}/options_example.cpp")
endfunction()
