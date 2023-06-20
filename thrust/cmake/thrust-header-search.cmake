# Parse version information from version.h:
unset(_THRUST_VERSION_INCLUDE_DIR CACHE) # Clear old result to force search
find_path(_THRUST_VERSION_INCLUDE_DIR thrust/version.h
  NO_CMAKE_FIND_ROOT_PATH
  NO_DEFAULT_PATH # Only search explicit paths below:
  PATHS
    "${CMAKE_CURRENT_LIST_DIR}/../.."            # Source tree
)
set_property(CACHE _THRUST_VERSION_INCLUDE_DIR PROPERTY TYPE INTERNAL)
