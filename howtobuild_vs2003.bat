::
:: To build and run osgAL the INCLUDE, LIB and PATH environment environments has to be set
:: prior to running VisualStudio .NET.
:: This BAT-file is an example of that
::
::

:: call the vcvars32.bat that comes with VisualStudio
call "c:\program files\Microsoft Visual Studio .NET 2003\Vc7\bin\vcvars32.bat"

:: Path to openscenegraph, producer and openthreads
set OPENSCENEGRAPH_PATH=c:\tools\openscenegraph
set PRODUCER_PATH=c:\tools\producer
set OPENTHREADS_PATH=c:\tools\openthreads

:: Path to where OpenHaptics is installed
set OPENAL_PATH=c:\tools\OpenALSDK1.2\


set INCLUDE=%INCLUDE%;%OPENSCENEGRAPH_PATH%\include;%PRODUCER_PATH%\include;%OPENTHREADS_PATH%\include;%OPENAL_PATH%\include
set LIB=%LIB%;%OPENSCENEGRAPH_PATH%\lib;%PRODUCER_PATH%\lib;%OPENTHREADS_PATH%\lib\win32;%OPENAL_PATH%\libs\win32
set PATH=%PATH%%OPENSCENEGRAPH_PATH%\bin;%PRODUCER_PATH%\bin;%OPENTHREADS_PATH%\bin\win32

:: Now we can start visual studio with the following command
devenv /useenv visualstudio\osgal\osgal.sln
