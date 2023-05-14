# = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = =

# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
# GLM (OpenGL Mathematics)
# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

target_include_directories( ${BUILD_TARGET} PRIVATE "${GLM_INCLUDE_DIR}" )

# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
# OpenGL
# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

# Link OpenGL
target_link_libraries ( ${BUILD_TARGET} ${opengl} )

# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
# GLAD
# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

target_include_directories ( ${BUILD_TARGET} PRIVATE ${GLAD_INCLUDE_DIR} )
target_sources ( ${BUILD_TARGET} PUBLIC "${GLAD_DIR}/src/gl.c" )

# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
# GLFW
# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

if ( NOT GLFW3_FOUND )
    # Link GLFW3
    target_link_libraries ( ${BUILD_TARGET} glfw )

    # Include GLFW3 Headers
    target_include_directories ( ${BUILD_TARGET} PRIVATE ${GLFW_INCLUDE_DIR} )
else ( NOT GLFW3_FOUND )
    # Link GLFW3
    target_link_libraries ( ${BUILD_TARGET} ${GLFW3_LIBRARIES} )

    # Include GLFW3 Headers
    target_include_directories ( ${BUILD_TARGET} PRIVATE ${GLFW_INCLUDE_DIR} )
endif ( NOT GLFW3_FOUND )

# = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = =
