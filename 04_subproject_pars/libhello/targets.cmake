set(ENUM_TEMPLATES LIBHELLO)

set(TARGET_PARAMETERS 
   WHO	SCALAR	STRING	"Jupiter"
)

function(generate_targets TARGET_NAME TEMPLATE_NAME)
   add_library(${TARGET_NAME} "${CMAKE_CURRENT_SOURCE_DIR}/source/libhello.cpp")
   target_sources(${TARGET_NAME} PRIVATE "${CMAKE_CURRENT_SOURCE_DIR}/include/libhello.h") #For better IDE integration
   
   target_include_directories(${TARGET_NAME} PUBLIC ${CMAKE_CURRENT_SOURCE_DIR}/include)
   target_compile_definitions(${TARGET_NAME} PRIVATE "WHO=${WHO}")
endfunction()

