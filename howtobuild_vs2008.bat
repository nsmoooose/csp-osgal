@echo off
:: To build and run osgAL the INCLUDE, LIB and PATH environment environments has to be set prior to running VisualC++.
:: This BAT-file is an example of that

:: call the vsvars32.bat that comes with VisualStudio
:: Change the variable used for other MSVC versions (VS90COMNTOOLS for instance)
call "%VS90COMNTOOLS%\vsvars32.bat"
::call "%VCINSTALLDIR%\bin\vcvars32.bat"

:: Path to openscenegraph
if defined OSG_PATH goto osg_path_defined
echo OSG_PATH not defined. Using script value.
set OSG_PATH=D:\Prog\Libs\OpenSceneGraph
:osg_path_defined

:: Path to OpenAL-Soft or OpenAL
if defined OPENAL_PATH goto openal_path_defined
echo OPENAL_PATH not defined. Using script value.
set OPENAL_PATH=D:\Prog\Libs\openal-soft-1.6.372
:openal_path_defined

:: Path to Free ALUT
if defined ALUT_PATH goto alut_path_defined
echo ALUT_PATH not defined. Using script value.
set ALUT_PATH=D:\Prog\Libs\freealut-1.1.0-bin
:alut_path_defined

:: Path to libogg
if defined OGG_PATH goto ogg_path_defined
echo OGG_PATH not defined. Using script value.
set OGG_PATH=D:\Prog\Libs\ogg
:ogg_path_defined

:: Path to libvorbis
if defined VORBIS_PATH goto vorbis_path_defined
echo VORBIS_PATH not defined. Using script value.
set VORBIS_PATH=D:\Prog\Libs\vorbis
:vorbis_path_defined


set OSG_INCLUDE=%OSG_PATH%\include
set OSG_LIB=%OSG_PATH%\lib
:: OpenAL - We also set "include/AL" as an include dir for compatibility with some strange Windows conventions
set OPENAL_INCLUDE=%OPENAL_PATH%\include;%OPENAL_PATH%\include\AL
set OPENAL_LIB=%OPENAL_PATH%\lib
set ALUT_INCLUDE=%ALUT_PATH%\include
set ALUT_LIB=%ALUT_PATH%\lib
set OGG_INCLUDE=%OGG_PATH%\include
set OGG_LIB=%OGG_PATH%\win32\Dynamic_Debug;%OGG_PATH%\win32\Dynamic_Release
set VORBIS_INCLUDE=%VORBIS_PATH%\include
set VORBIS_LIB=%VORBIS_PATH%\win32\Vorbis_Dynamic_Debug;%VORBIS_PATH%\win32\Vorbis_Dynamic_Release;%VORBIS_PATH%\win32\VorbisFile_Dynamic_Debug;%VORBIS_PATH%\win32\VorbisFile_Dynamic_Release

set INCLUDE=%INCLUDE%;%OSG_INCLUDE%;%OPENAL_INCLUDE%;%ALUT_INCLUDE%;%OGG_INCLUDE%;%VORBIS_INCLUDE%
set LIB=%LIB%;%OSG_LIB%;%OPENAL_LIB%;%ALUT_LIB%;%OGG_LIB%;%VORBIS_LIB%
::set PATH=%PATH%;%OSG_PATH%\bin;%VORBIS_PATH%\bin;%OGG_PATH%\bin

:: Now we can start visual studio with the following command
if not exist "%DevEnvDir%\devenv.exe" goto express
devenv /useenv visualstudio\osgal\osgal.sln
goto end

:express
:: Express version has to be lauched since non-express has not been found
VCExpress.exe /useenv visualstudio\osgal\osgal.sln

:end