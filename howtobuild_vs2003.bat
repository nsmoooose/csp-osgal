::
:: To build and run osgAL the INCLUDE, LIB and PATH environment environments has to be set
:: prior to running VisualStudio .NET.
:: This BAT-file is an example of that
::
:: Currently there are project files for VC6 (.dsw/.dsp), Visual Studio .NET2003 (VC7) (*-vc7.vcproj/*-vc7.sln)
:: and finally for VisualStudio 2005 (VC8).
:: The latter is what is going to be supported in the future. We are dropping the older versions
:: one by one. So some things might not go into the older project files.
::

:: call the vcvars32.bat that comes with VisualStudio
call "c:\program files\Microsoft Visual Studio .NET 2003\Vc7\bin\vcvars32.bat"

:: Path to openscenegraph, producer and openthreads
set OPENSCENEGRAPH_PATH=c:\tools\openscenegraph
set PRODUCER_PATH=c:\tools\producer
set OPENTHREADS_PATH=c:\tools\openthreads
set VORBIS_PATH=c:\tools\vorbis
set OGG_PATH=c:\tools\vorbis

:: Path to where OpenHaptics is installed
set OPENAL_PATH=c:\tools\OpenALSDK1.2\


set INCLUDE=%INCLUDE%;%OPENSCENEGRAPH_PATH%\include;%PRODUCER_PATH%\include;%OPENTHREADS_PATH%\include;%OPENAL_PATH%\include;%VORBIS_PATH%\include;%OGG_PATH%\include
set LIB=%LIB%;%OPENSCENEGRAPH_PATH%\lib;%PRODUCER_PATH%\lib;%OPENTHREADS_PATH%\lib\win32;%OPENAL_PATH%\libs\win32;%VORBIS_PATH%\lib;%OGG_PATH%\lib
set PATH=%PATH%%OPENSCENEGRAPH_PATH%\bin;%PRODUCER_PATH%\bin;%OPENTHREADS_PATH%\bin\win32;;%VORBIS_PATH%\bin;%OGG_PATH%\bin

:: Now we can start visual studio with the following command
devenv /useenv visualstudio\osgal\osgal.sln
