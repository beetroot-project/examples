set(ENUM_TARGETS BOOST_SINGLETON)

set(TARGET_FEATURES
	MIN_VERSION SCALAR VERSION 1.68.0
	COMPONENTS VECTOR STRING ""
)

set(TEMPLATE_OPTIONS
	NICE_NAME "Boost library"
	DONT_LINK_TO_DEPENDEE
	NO_TARGETS
	SINGLETON_TARGETS
)
