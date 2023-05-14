# = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = =

# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
# GLM (OpenGL Mathematics)
# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

set( GLM_INCLUDE_DIR "${LIBS_DIR}glm/glm" )
if ( NOT EXISTS "${GLM_INCLUDE_DIR}/vec3.hpp" )
    message( FATAL_ERROR "${PROJECT_NAME} - GLM not found at ${GLM_INCLUDE_DIR}" )
endif ( NOT EXISTS "${GLM_INCLUDE_DIR}/vec3.hpp" )

# = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = =
