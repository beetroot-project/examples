set(ENUM_TEMPLATES CORE CORE_TEST)

include_build_parameters_of(VERSION) #VERSIONS

function(declare_dependencies TEMPLATE_NAME)
  	if(${TEMPLATE_NAME} STREQUAL "CORE")
		build_target(constants_configure) #Implicitely passing versions
		#Might as well type
		# build_target(constants_configure 
		# 	VERSION_MAJOR ${VERSION_MAJOR}
		# 	VERSION_MINOR ${VERSION_MINOR}
		# 	)
	   build_target(GENERATE_EXPORT_HEADER)
	elseif(${TEMPLATE_NAME} STREQUAL "CORE_TEST")
  		build_target(constants_tu_configure)
  		build_target(CORE)
  		build_target(BOOST COMPONENT unit_test_framework)
  	else()
  		message(FATAL_ERROR "Uknown template ${TEMPLATE_NAME}")
  	endif()
endfunction()

function(generate_targets TARGET_NAME TEMPLATE_NAME)
#	message(STATUS "TEMPLATE_NAME=${TEMPLATE_NAME}" )
  	if("${TEMPLATE_NAME}" STREQUAL "CORE")
	   add_library(${TARGET_NAME} "${CMAKE_CURRENT_SOURCE_DIR}/Constants.h")
	   set_target_properties(${TARGET_NAME} PROPERTIES LINKER_LANGUAGE CXX)
	elseif(${TEMPLATE_NAME} STREQUAL "CORE_TEST")
		add_executable(${TARGET_NAME})
		add_test( NAME ${TARGET_NAME} COMMAND ${TARGET_NAME} )
  	else()
  		message(FATAL_ERROR "Uknown template ${TEMPLATE_NAME}")
  	endif()
  	target_include_directories(${TARGET_NAME} PUBLIC ${SUPERBUILD_ROOT})
endfunction()
