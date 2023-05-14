# = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = =

# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
# CMAKE
# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

if ( NOT DEFINED HEX_CMAKE_VERSION )
    set( HEX_CMAKE_VERSION 3.22.1 )
endif ( NOT DEFINED HEX_CMAKE_VERSION )

# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
# PROJECT
# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

set( APP_PROJECT_NAME "TetriX" )
set( APP_BINARY_NAME "tetrix_core" )
set( APP_CORE_VERSION 0.1.0 )

# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
# DIRS
# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

set( HEX_SRC_ROOT_DIR "${CMAKE_SOURCE_DIR}/src/engine" )
set( APP_SRC_DIR "${CMAKE_SOURCE_DIR}/src/app" )
set( LIBS_DIR "${CMAKE_SOURCE_DIR}/libs/" )

# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
# INHERIT
# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

include( "${CMAKE_CURRENT_SOURCE_DIR}/src/engine/core/cmake/constants.cmake" )
if ( NOT DEFINED HEX_CXX_VERSION )
    message( FATAL_ERROR "${CMAKE_PROJECT_NAME} - invalid C++ version, check include path" )
endif ( NOT DEFINED HEX_CXX_VERSION )

# = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = =
