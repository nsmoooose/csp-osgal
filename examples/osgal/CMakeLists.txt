SET(EXE_NAME example_osgal)

ADD_EXECUTABLE(
	${EXE_NAME}
	osgal.cpp
)

add_definitions( 
  -D_CONSOLE
  -DFL_DLL
)

INCLUDE_WITH_VARIABLES( ${EXE_NAME} OPENAL ALUT OGG VORBIS )
LINK_WITH_VARIABLES( ${EXE_NAME} OSG OSGGA OSGVIEWER OSGDB OSGUTIL )
TARGET_LINK_LIBRARIES( ${EXE_NAME} openalpp osgAL )

# Add the postfix to the executable since it is not added automatically as for modules and shared libraries
SET_TARGET_PROPERTIES(${EXE_NAME} PROPERTIES DEBUG_POSTFIX "${CMAKE_DEBUG_POSTFIX}")
# Ugly workaround to remove the "/debug" or "/release" in each output
SET_TARGET_PROPERTIES(${EXE_NAME} PROPERTIES PREFIX "../")
