set(ENUM_TEMPLATES HELLO_WITH_LIB)

include_build_parameters_of(LIBHELLO
	INCLUDE_ONLY
		WHO
) #Implicitly imports only WHO. See API reference to learn about all the options

function(declare_dependencies TEMPLATE_NAME)
   build_target(LIBHELLO WHO "Saturn")
endfunction()

function(generate_targets TARGET_NAME TEMPLATE_NAME)
   add_executable(${TARGET_NAME} "${CMAKE_CURRENT_SOURCE_DIR}/hello_with_lib.cpp")
   target_compile_definitions(${TARGET_NAME} PRIVATE "WHO=${WHO}") # ${WHO} is now available and can be used as a compile option
endfunction()

