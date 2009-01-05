FOREACH( myexamplefolder 
        osgal
		osgalmultiple
		osgalocclude
        osgalviewer
    )

    ADD_SUBDIRECTORY(${myexamplefolder})

ENDFOREACH( myexamplefolder )

IF(BUILD_EXAMPLES_OALPP)
	ADD_SUBDIRECTORY(openalpp)
ENDIF(BUILD_EXAMPLES_OALPP)
