set(ENUM_TEMPLATES SqrtTable)

function(declare_dependencies TEMPLATE_NAME)
   build_target(SqrtGenerator)
endfunction()

function(generate_targets TARGET_NAME TEMPLATE_NAME)
	add_custom_command (
	  OUTPUT ${CMAKE_CURRENT_BINARY_DIR}/Table.h
	  COMMAND ${SqrtGenerator} ${CMAKE_CURRENT_BINARY_DIR}/Table.h
	  DEPENDS MakeTable
  )
endfunction()

