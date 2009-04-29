#########################################
# Capture
SET(EXE_NAME example_oalpp_capture)

ADD_EXECUTABLE( ${EXE_NAME} capture.cpp )
add_definitions( -D_CONSOLE )

INCLUDE_WITH_VARIABLES( ${EXE_NAME} OPENAL ALUT OGG VORBIS )
LINK_WITH_VARIABLES( ${EXE_NAME} OSG )
TARGET_LINK_LIBRARIES( ${EXE_NAME} openalpp )
SET_TARGET_PROPERTIES(${EXE_NAME} PROPERTIES DEBUG_POSTFIX "${CMAKE_DEBUG_POSTFIX}")
IF(MSVC_IDE)
	# Ugly workaround to remove the "/debug" or "/release" in each output
	SET_TARGET_PROPERTIES(${EXE_NAME} PROPERTIES PREFIX "../")
ENDIF()


#########################################
# Moving
SET(EXE_NAME example_oalpp_moving)

ADD_EXECUTABLE( ${EXE_NAME} moving.cpp )
add_definitions( -D_CONSOLE )

INCLUDE_WITH_VARIABLES( ${EXE_NAME} OPENAL ALUT OGG VORBIS )
LINK_WITH_VARIABLES( ${EXE_NAME} OSG )
TARGET_LINK_LIBRARIES( ${EXE_NAME} openalpp )
SET_TARGET_PROPERTIES(${EXE_NAME} PROPERTIES DEBUG_POSTFIX "${CMAKE_DEBUG_POSTFIX}")
IF(MSVC_IDE)
	# Ugly workaround to remove the "/debug" or "/release" in each output
	SET_TARGET_PROPERTIES(${EXE_NAME} PROPERTIES PREFIX "../")
ENDIF()


#########################################
# Multiple
SET(EXE_NAME example_oalpp_multiple)

ADD_EXECUTABLE( ${EXE_NAME} multiple.cpp )
add_definitions( -D_CONSOLE )

INCLUDE_WITH_VARIABLES( ${EXE_NAME} OPENAL ALUT OGG VORBIS )
LINK_WITH_VARIABLES( ${EXE_NAME} OSG )
TARGET_LINK_LIBRARIES( ${EXE_NAME} openalpp )
SET_TARGET_PROPERTIES(${EXE_NAME} PROPERTIES DEBUG_POSTFIX "${CMAKE_DEBUG_POSTFIX}")
IF(MSVC_IDE)
	# Ugly workaround to remove the "/debug" or "/release" in each output
	SET_TARGET_PROPERTIES(${EXE_NAME} PROPERTIES PREFIX "../")
ENDIF()


#########################################
# multiple_oggstreams
SET(EXE_NAME example_oalpp_multiple_oggstreams)

ADD_EXECUTABLE( ${EXE_NAME} multiple_oggstreams.cpp )
add_definitions( -D_CONSOLE )

INCLUDE_WITH_VARIABLES( ${EXE_NAME} OPENAL ALUT OGG VORBIS )
LINK_WITH_VARIABLES( ${EXE_NAME} OSG )
TARGET_LINK_LIBRARIES( ${EXE_NAME} openalpp )
SET_TARGET_PROPERTIES(${EXE_NAME} PROPERTIES DEBUG_POSTFIX "${CMAKE_DEBUG_POSTFIX}")
IF(MSVC_IDE)
	# Ugly workaround to remove the "/debug" or "/release" in each output
	SET_TARGET_PROPERTIES(${EXE_NAME} PROPERTIES PREFIX "../")
ENDIF()


#########################################
# playOgg
SET(EXE_NAME example_oalpp_playOgg)

ADD_EXECUTABLE( ${EXE_NAME} playOgg.cpp )
add_definitions( -D_CONSOLE )

INCLUDE_WITH_VARIABLES( ${EXE_NAME} OPENAL ALUT OGG VORBIS )
LINK_WITH_VARIABLES( ${EXE_NAME} OSG )
TARGET_LINK_LIBRARIES( ${EXE_NAME} openalpp )
SET_TARGET_PROPERTIES(${EXE_NAME} PROPERTIES DEBUG_POSTFIX "${CMAKE_DEBUG_POSTFIX}")
IF(MSVC_IDE)
	# Ugly workaround to remove the "/debug" or "/release" in each output
	SET_TARGET_PROPERTIES(${EXE_NAME} PROPERTIES PREFIX "../")
ENDIF()


#########################################
# simple
SET(EXE_NAME example_oalpp_simple)

ADD_EXECUTABLE( ${EXE_NAME} simple.cpp )
add_definitions( -D_CONSOLE )

INCLUDE_WITH_VARIABLES( ${EXE_NAME} OPENAL ALUT OGG VORBIS )
LINK_WITH_VARIABLES( ${EXE_NAME} OSG )
TARGET_LINK_LIBRARIES( ${EXE_NAME} openalpp )
SET_TARGET_PROPERTIES(${EXE_NAME} PROPERTIES DEBUG_POSTFIX "${CMAKE_DEBUG_POSTFIX}")
IF(MSVC_IDE)
	# Ugly workaround to remove the "/debug" or "/release" in each output
	SET_TARGET_PROPERTIES(${EXE_NAME} PROPERTIES PREFIX "../")
ENDIF()


#########################################
# testfstream
SET(EXE_NAME example_oalpp_testfstream)

ADD_EXECUTABLE( ${EXE_NAME} testfstream.cpp )
add_definitions( -D_CONSOLE )

INCLUDE_WITH_VARIABLES( ${EXE_NAME} OPENAL ALUT OGG VORBIS )
LINK_WITH_VARIABLES( ${EXE_NAME} OSG )
TARGET_LINK_LIBRARIES( ${EXE_NAME} openalpp )
SET_TARGET_PROPERTIES(${EXE_NAME} PROPERTIES DEBUG_POSTFIX "${CMAKE_DEBUG_POSTFIX}")
IF(MSVC_IDE)
	# Ugly workaround to remove the "/debug" or "/release" in each output
	SET_TARGET_PROPERTIES(${EXE_NAME} PROPERTIES PREFIX "../")
ENDIF()

