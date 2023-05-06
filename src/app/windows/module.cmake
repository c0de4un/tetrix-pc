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
target_include_directories( app PUBLIC "${CMAKE_CURRENT_SOURCE_DIR}/src/app/windows/public" )

# Link with App.Core
target_include_directories( app PUBLIC "${CMAKE_CURRENT_SOURCE_DIR}/src/app/core/public" )

# Link with hexEngine.Core
target_include_directories( app PUBLIC "${CMAKE_CURRENT_SOURCE_DIR}/src/engine/core/public" )

# Link with hexEngine.Windows
target_include_directories( app PUBLIC "${CMAKE_CURRENT_SOURCE_DIR}/src/engine/${PLATFORM}/public" )

# Link with hexEngine.GL

# Link with hexEngine.Net

# = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = =
