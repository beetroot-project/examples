set(ENUM_TEMPLATES MathFunctions)

function(generate_targets TARGET_NAME)
	add_library(${TARGET_NAME} ${CMAKE_CURRENT_SOURCE_DIR}/mysqrt.cxx)
	target_include_directories(${TARGET_NAME} PUBLIC "${CMAKE_CURRENT_SOURCE_DIR}")
	target_compile_definitions(${TARGET_NAME} PUBLIC USE_MYMATH)
endfunction()

