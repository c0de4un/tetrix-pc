# = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = =

# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
# HEADERS
# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

set( APP_WIN_PUBLIC_DIR "${APP_SRC_DIR}/windows/public/tetrix/windows/" )
set( APP_HEADERS
    "${APP_WIN_PUBLIC_DIR}main.hpp"
    ${APP_HEADERS}
)
# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
# SOURCES
# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

set( APP_WIN_PRIVATE_DIR "${APP_SRC_DIR}/windows/private/tetrix/windows/" )
set( APP_SOURCES
    "${APP_WIN_PRIVATE_DIR}main.cpp"
    ${APP_SOURCES}
)

# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
# BUILD
# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

# Add Executable-Object
add_executable( app ${APP_HEADERS} ${APP_SOURCES} )
set( BUILD_TARGET app )

target_include_directories( app PUBLIC "${CMAKE_CURRENT_SOURCE_DIR}/src/app/windows/public" )

# Flags for Clang
target_compile_options( app PUBLIC -fexceptions )

# Link with App.Core
target_include_directories( app PUBLIC "${CMAKE_CURRENT_SOURCE_DIR}/src/app/core/public" )

#target_link_libraries( app PUBLIC hex )
target_link_libraries ( ${BUILD_TARGET} glfw )

# Link with hexEngine.Core
target_include_directories( app PUBLIC "${CMAKE_CURRENT_SOURCE_DIR}/src/engine/core/public" )

# Link with hexEngine.Windows
if ( NOT EXISTS "${CMAKE_CURRENT_SOURCE_DIR}/src/engine/${PLATFORM}/module.cmake" )
    message( FATAL_ERROR "${PROJECT_NAME} - hexEngine.windows module not found at: ${CMAKE_CURRENT_SOURCE_DIR}/src/engine/${PLATFORM}" )
endif ( NOT EXISTS "${CMAKE_CURRENT_SOURCE_DIR}/src/engine/${PLATFORM}/module.cmake" )

target_include_directories( app PUBLIC "${CMAKE_CURRENT_SOURCE_DIR}/src/engine/${PLATFORM}/public" )

# Link with hexEngine.GL

# Link with hexEngine.Net

# = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = =
