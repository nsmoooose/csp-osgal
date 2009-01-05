FOREACH( mylibfolder 
        openalpp
        osgAL
        osgPlugin 
    )

    ADD_SUBDIRECTORY(${mylibfolder})

ENDFOREACH( mylibfolder )
