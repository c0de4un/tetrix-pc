# = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = =

# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
# GLM (OpenGL Mathematics)
# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

target_include_directories( app PRIVATE "${GLM_INCLUDE_DIR}" )

# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
# OpenGL
# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

# Link OpenGL
target_link_libraries ( app ${opengl} )

# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
# GLAD
# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

target_include_directories ( app PUBLIC ${GLAD_INCLUDE_DIR} )
target_sources ( app PUBLIC "${GLAD_DIR}/src/gl.c" )

# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
# GLFW
# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

if ( NOT GLFW3_FOUND )
    # Link GLFW3
    target_link_libraries ( app glfw )

    # Include GLFW3 Headers
    target_include_directories ( app PRIVATE ${GLFW_INCLUDE_DIR} )
else ( NOT GLFW3_FOUND )
    # Link GLFW3
    target_link_libraries ( app ${GLFW3_LIBRARIES} )

    # Include GLFW3 Headers
    target_include_directories ( app PRIVATE ${GLFW_INCLUDE_DIR} )
endif ( NOT GLFW3_FOUND )

# = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = =
