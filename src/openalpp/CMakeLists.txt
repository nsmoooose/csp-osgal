SET(LIB_NAME openalpp)
SET(HEADER_PATH ${osgAL_SOURCE_DIR}/include/${LIB_NAME})
SET(OSGAL_USER_DEFINED_DYNAMIC_OR_STATIC SHARED)

SET(LIB_PUBLIC_HEADERS
	${HEADER_PATH}/AudioBase
	${HEADER_PATH}/AudioConvert
	${HEADER_PATH}/AudioEnvironment
	${HEADER_PATH}/Capture
	${HEADER_PATH}/config
	${HEADER_PATH}/DeviceUpdater
	${HEADER_PATH}/Error
	${HEADER_PATH}/Export
	${HEADER_PATH}/FileStream
	${HEADER_PATH}/FileStreamUpdater
	${HEADER_PATH}/GroupSource
	${HEADER_PATH}/Listener
	${HEADER_PATH}/NetStream
	${HEADER_PATH}/NetUpdater
	${HEADER_PATH}/PositionedObject
	${HEADER_PATH}/Sample
	${HEADER_PATH}/SoundData
	${HEADER_PATH}/Source
	${HEADER_PATH}/SourceBase
	${HEADER_PATH}/Stream
	${HEADER_PATH}/StreamUpdater
	${HEADER_PATH}/windowsstuff
)

ADD_LIBRARY(
	${LIB_NAME}
	${OSGAL_USER_DEFINED_DYNAMIC_OR_STATIC}
    ${LIB_PUBLIC_HEADERS}
	AudioBase.cpp
	AudioConvert.cpp
	AudioEnvironment.cpp
	Capture.cpp
	DeviceUpdater.cpp
	Error.cpp
	FileStream.cpp
	FileStreamUpdater.cpp
	GroupSource.cpp
	Listener.cpp
	NetStream.cpp
	NetUpdater.cpp
	Openalpp.cpp
	Sample.cpp
	SoundData.cpp
	Source.cpp
	SourceBase.cpp
	Stream.cpp
	StreamUpdater.cpp
)

add_definitions( 
	-DOPENALPP_EXPORTS
	#-D_USRDLL
)

LINK_WITH_VARIABLES( ${LIB_NAME} OPENAL ALUT OPENTHREADS OSG OSGDB OGG VORBIS VORBISFILE )
#winmm

IF(MSVC_IDE)
	# Ugly workaround to remove the "/debug" or "/release" in each output
	SET_TARGET_PROPERTIES(${LIB_NAME} PROPERTIES PREFIX "../")
	SET_TARGET_PROPERTIES(${LIB_NAME} PROPERTIES IMPORT_PREFIX "../")
ENDIF()
	
INCLUDE(ModuleInstall OPTIONAL)
