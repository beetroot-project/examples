set(ENUM_TEMPLATES GUI_EXAMPLE)

include_build_parameters_of(VERSION) #VERSIONS

function(declare_dependencies TEMPLATE_NAME)
   build_target(MAYBE_TESTED 
   	TARGET_NAME CORE 
   	UNIT_TEST CORE_TEST) #Includes CORE and perhaps also its unit test
   build_target(wxWidgets)
endfunction()

function(generate_targets TARGET_NAME TEMPLATE_NAME)
   add_executable(${TARGET_NAME} "${CMAKE_CURRENT_SOURCE_DIR}/gui_example.cpp")
endfunction()
