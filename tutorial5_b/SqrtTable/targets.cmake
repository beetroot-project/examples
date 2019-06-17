set(ENUM_TEMPLATES SqrtTable)

function(declare_dependencies TEMPLATE_NAME)
   build_target(SqrtGenerator)
endfunction()

function(generate_targets TARGET_NAME TEMPLATE_NAME)
	if("${TEMPLATE_NAME}" STREQUAL "SqrtGenerator")
		add_executable(${TARGET_NAME} ${CMAKE_CURRENT_SOURCE_DIR}/MakeTable.cxx)
	else()
		add_custom_command (
		  OUTPUT ${CMAKE_CURRENT_BINARY_DIR}/Table.h
		  COMMAND ${SqrtGenerator} ${CMAKE_CURRENT_BINARY_DIR}/Table.h
		  DEPENDS MakeTable
	  )
	endif()
endfunction()

