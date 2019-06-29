set(ENUM_TARGETS Tutorial)

include_target_parameters_of(VERSION )

function(declare_dependencies TEMPLATE_NAME)
   build_target(VERSION)
endfunction()

function(generate_targets TARGET_NAME TEMPLATE_NAME)
	add_executable(Tutorial ${CMAKE_CURRENT_SOURCE_DIR}/tutorial.cxx)
endfunction()

