# osgAL CMake script
# by Sukender (Benoit Neil), from OSG CMake script

# TODO:
# Check on Mac OSX
# Copy includes in out-of-the-source builds ?
# Add documentation subproject ?

CMAKE_MINIMUM_REQUIRED(VERSION 2.6.2 FATAL_ERROR)

project( osgAL )
SET(OSGAL_MAJOR_VERSION 0)
SET(OSGAL_MINOR_VERSION 6)
SET(OSGAL_PATCH_VERSION 2)

SET(OSGAL_VERSION ${OSGAL_MAJOR_VERSION}.${OSGAL_MINOR_VERSION}.${OSGAL_PATCH_VERSION})

# We have some custom .cmake scripts not in the official distribution.
SET(CMAKE_MODULE_PATH "${osgAL_SOURCE_DIR}/CMakeModules;${CMAKE_MODULE_PATH}")

FIND_PACKAGE(OpenAL)
FIND_PACKAGE(ALUT)
FIND_PACKAGE(OpenThreads)
FIND_PACKAGE(osg)
FIND_PACKAGE(osgDB)
FIND_PACKAGE(osgUtil)
FIND_PACKAGE(OGG)
FIND_PACKAGE(Vorbis)
FIND_PACKAGE(VorbisFile)


OPTION(BUILD_EXAMPLES_OSGAL "Set to ON to build osgAL examples." ON)
OPTION(BUILD_EXAMPLES_OALPP "Set to ON to build openAL++ examples." ON)


# Make the headers visible to everything
IF(NOT ${PROJECT_BINARY_DIR} EQUAL ${PROJECT_SOURCE_DIR})
   INCLUDE_DIRECTORIES(${PROJECT_BINARY_DIR}/include)
ENDIF(NOT ${PROJECT_BINARY_DIR} EQUAL ${PROJECT_SOURCE_DIR})

INCLUDE_DIRECTORIES(
    ${osgAL_SOURCE_DIR}/include
)


IF(WIN32)
    IF(MSVC)
        # This option is to enable the /MP switch for Visual Studio 2005 and above compilers
        OPTION(WIN32_USE_MP "Set to ON to build OpenSceneGraph with the /MP option (Visual Studio 2005 and above)." OFF)
        MARK_AS_ADVANCED(WIN32_USE_MP)
        IF(WIN32_USE_MP)
            SET(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} /MP")
        ENDIF(WIN32_USE_MP)

        # # turn off various warnings
        #foreach(warning 4244 4251 4267 4275 4290 4786 4305 4996)
        foreach(warning 4290)
            SET(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} /wd${warning}")
        endforeach(warning)

        # # More MSVC specific compilation flags
        # ADD_DEFINITIONS(-D_SCL_SECURE_NO_WARNINGS)
        # ADD_DEFINITIONS(-D_CRT_SECURE_NO_DEPRECATE)
    ENDIF(MSVC)
ENDIF(WIN32)


################################################################################
# Create bin and lib directories if required

SET(OUTPUT_BINDIR ${PROJECT_BINARY_DIR}/bin)
MAKE_DIRECTORY(${OUTPUT_BINDIR})
SET(OUTPUT_LIBDIR ${PROJECT_BINARY_DIR}/lib)
MAKE_DIRECTORY(${OUTPUT_LIBDIR})

SET(CMAKE_ARCHIVE_OUTPUT_DIRECTORY ${OUTPUT_LIBDIR})
SET(CMAKE_RUNTIME_OUTPUT_DIRECTORY ${OUTPUT_BINDIR})
IF(WIN32)
	SET(CMAKE_LIBRARY_OUTPUT_DIRECTORY ${OUTPUT_BINDIR})
ELSE(WIN32)
	SET(CMAKE_LIBRARY_OUTPUT_DIRECTORY ${OUTPUT_LIBDIR})
ENDIF(WIN32)

#MARK_AS_ADVANCED(...)

################################################################################
# Installation stuff

SET(CMAKE_DEBUG_POSTFIX "d" CACHE STRING "add a postfix, usually d on windows")
#ADD_DEFINITIONS(-DOSG_DEBUG_POSTFIX=${CMAKE_DEBUG_POSTFIX})

IF(UNIX AND NOT WIN32)
  IF(CMAKE_BUILD_TYPE STREQUAL "Debug")
    ADD_DEFINITIONS("-D_DEBUG")
  ENDIF(CMAKE_BUILD_TYPE STREQUAL "Debug")
ENDIF(UNIX AND NOT WIN32)

IF(CYGWIN)
  IF(CMAKE_BUILD_TYPE STREQUAL "Debug")
    ADD_DEFINITIONS("-D_DEBUG")
  ENDIF(CMAKE_BUILD_TYPE STREQUAL "Debug")
ENDIF(CYGWIN)


# Adds includes for a library found with FIND_PACKAGE
MACRO(INCLUDE_WITH_VARIABLES TRGTNAME)
    FOREACH(varname ${ARGN})
        IF(${varname}_INCLUDE_DIR)
			INCLUDE_DIRECTORIES("${${varname}_INCLUDE_DIR}")
        # ELSE(${varname}_INCLUDE_DIR)
			# MESSAGE(SEND_ERROR "Missing '${varname}_INCLUDE_DIR' variable")
        ENDIF(${varname}_INCLUDE_DIR)
    ENDFOREACH(varname)
ENDMACRO(INCLUDE_WITH_VARIABLES TRGTNAME)

# Adds includes and link properties for a library found with FIND_PACKAGE
MACRO(LINK_WITH_VARIABLES TRGTNAME)
	INCLUDE_WITH_VARIABLES(${ARGV})
    FOREACH(varname ${ARGN})
		#MESSAGE(STATUS "${varname}_LIBRARY = ${${varname}_LIBRARY}")
        IF(${varname}_LIBRARY_DEBUG)
			#MESSAGE(STATUS "${varname}_LIBRARY_DEBUG = ${${varname}_LIBRARY_DEBUG}")
            TARGET_LINK_LIBRARIES(${TRGTNAME} optimized "${${varname}_LIBRARY}" debug "${${varname}_LIBRARY_DEBUG}")
        ELSE(${varname}_LIBRARY_DEBUG)
            TARGET_LINK_LIBRARIES(${TRGTNAME} "${${varname}_LIBRARY}" )
        ENDIF(${varname}_LIBRARY_DEBUG)
    ENDFOREACH(varname)
ENDMACRO(LINK_WITH_VARIABLES TRGTNAME)



ADD_SUBDIRECTORY(src)

IF(BUILD_EXAMPLES_OSGAL)
	FIND_PACKAGE(osgGA)
	FIND_PACKAGE(osgViewer)
	ADD_SUBDIRECTORY(examples)
ENDIF(BUILD_EXAMPLES_OSGAL)
