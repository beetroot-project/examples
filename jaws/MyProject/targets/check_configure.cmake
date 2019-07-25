set(ENUM_TARGETS check_configure)

set(BUILD_PARAMETERS 
	MAX_FILENAME_LEN SCALAR INTEGER 20
)

set(FILE_OPTIONS
	NO_TARGETS
)

function(declare_dependencies TEMPLATE_NAME)
   build_target(GENERIC_CONFIGURE
   	INPUT_FILENAME "tools/check.cpp" 
   	PARLIST_SCALARS "MAX_FILENAME_LEN"
   	ARGLIST	MAX_FILENAME_LEN ${MAX_FILENAME_LEN}
   )
	build_target(BOOST COMPONENT program_options)
endfunction()

