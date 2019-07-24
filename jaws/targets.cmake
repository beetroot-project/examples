set(ENUM_TARGETS MyProject)

include_target_parameters_of(VERSION) #VERSIONS

set(TARGET_PARAMETERS 
	GUI OPTION BOOL "OFF"
)

set(TEMPLATE_OPTIONS
	NO_TARGETS
)

function(declare_dependencies EMPLATE_NAME)
	if(GUI)
	   build_target(GUI_EXAMPLE)
	endif()
   build_target(OPTIONS_EXAMPLE)
endfunction()

