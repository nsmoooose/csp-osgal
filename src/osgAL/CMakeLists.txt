SET(LIB_NAME osgAL)
SET(HEADER_PATH ${osgAL_SOURCE_DIR}/include/${LIB_NAME})
SET(OSGAL_USER_DEFINED_DYNAMIC_OR_STATIC SHARED)

SET(LIB_PUBLIC_HEADERS
	${HEADER_PATH}/Export
	${HEADER_PATH}/OccludeCallback
	${HEADER_PATH}/SoundManager
	${HEADER_PATH}/SoundNode
	${HEADER_PATH}/SoundRoot
	${HEADER_PATH}/SoundState
	${HEADER_PATH}/Version
)

ADD_LIBRARY(
	${LIB_NAME}
	${OSGAL_USER_DEFINED_DYNAMIC_OR_STATIC}
    ${LIB_PUBLIC_HEADERS}
	OccludeCallback.cpp
	SoundManager.cpp
	SoundNode.cpp
	SoundRoot.cpp
	SoundState.cpp
	Version.cpp
)

add_definitions( 
  -DOSGAL_LIBRARY
  #-DWIN32
  #-DUSE_COLOSSEUM3Dx
  #-D_WINDOWS
)

INCLUDE_WITH_VARIABLES( ${EXE_NAME} VORBIS )
LINK_WITH_VARIABLES( ${LIB_NAME} OPENAL ALUT OSG OSGDB OSGUTIL OPENTHREADS )
TARGET_LINK_LIBRARIES( ${LIB_NAME} openalpp )

# Ugly workaround to remove the "/debug" or "/release" in each output
SET_TARGET_PROPERTIES(${LIB_NAME} PROPERTIES PREFIX "../")
SET_TARGET_PROPERTIES(${LIB_NAME} PROPERTIES IMPORT_PREFIX "../")

INCLUDE(ModuleInstall OPTIONAL)
