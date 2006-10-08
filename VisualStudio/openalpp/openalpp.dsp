# Microsoft Developer Studio Project File - Name="oalpp" - Package Owner=<4>
# Microsoft Developer Studio Generated Build File, Format Version 6.00
# ** DO NOT EDIT **

# TARGTYPE "Win32 (x86) Dynamic-Link Library" 0x0102

CFG=oalpp - Win32 Debug
!MESSAGE This is not a valid makefile. To build this project using NMAKE,
!MESSAGE use the Export Makefile command and run
!MESSAGE 
!MESSAGE NMAKE /f "oalpp.mak".
!MESSAGE 
!MESSAGE You can specify a configuration when running NMAKE
!MESSAGE by defining the macro CFG on the command line. For example:
!MESSAGE 
!MESSAGE NMAKE /f "oalpp.mak" CFG="oalpp - Win32 Debug"
!MESSAGE 
!MESSAGE Possible choices for configuration are:
!MESSAGE 
!MESSAGE "oalpp - Win32 Debug" (based on "Win32 (x86) Dynamic-Link Library")
!MESSAGE "oalpp - Win32 Release" (based on "Win32 (x86) Dynamic-Link Library")
!MESSAGE 

# Begin Project
# PROP AllowPerConfigDependencies 0
# PROP Scc_ProjName ""
# PROP Scc_LocalPath ""
CPP=cl.exe
MTL=midl.exe
RSC=rc.exe

!IF  "$(CFG)" == "oalpp - Win32 Debug"

# PROP BASE Use_MFC 0
# PROP BASE Use_Debug_Libraries 1
# PROP BASE Output_Dir "../../lib"
# PROP BASE Intermediate_Dir ".\$(ProjectName)_release"
# PROP BASE Target_Dir ""
# PROP Use_MFC 0
# PROP Use_Debug_Libraries 1
# PROP Output_Dir "../../lib"
# PROP Intermediate_Dir ".\$(ProjectName)_release"
# PROP Target_Dir ""
# ADD BASE CPP /nologo /MDd /I "../../include" /ZI /W3 /Od /D "_DEBUG" /D "_WINDOWS" /D "_USRDLL" /D "OPENALPP_EXPORTS" /D "WIN32" /D "_MBCS" /GR /YX /Fp".\Debug/openalpp.pch" /Fo".\Debug/" /Fd".\Debug/" /FR /GZ /c /GX 
# ADD CPP /nologo /MDd /I "../../include" /ZI /W3 /Od /D "_DEBUG" /D "_WINDOWS" /D "_USRDLL" /D "OPENALPP_EXPORTS" /D "WIN32" /D "_MBCS" /GR /YX /Fp".\Debug/openalpp.pch" /Fo".\Debug/" /Fd".\Debug/" /FR /GZ /c /GX 
# ADD BASE MTL /nologo /D"_DEBUG" /mktyplib203 /tlb".\..\lib\openalpp.tlb" /win32 
# ADD MTL /nologo /D"_DEBUG" /mktyplib203 /tlb".\..\lib\openalpp.tlb" /win32 
# ADD BASE RSC /l 1053 /d "_DEBUG" 
# ADD RSC /l 1053 /d "_DEBUG" 
BSC32=bscmake.exe
# ADD BASE BSC32 /nologo 
# ADD BSC32 /nologo 
LINK32=link.exe
# ADD BASE LINK32 kernel32.lib user32.lib gdi32.lib winspool.lib comdlg32.lib advapi32.lib shell32.lib ole32.lib oleaut32.lib uuid.lib odbc32.lib odbccp32.lib osgdbd.lib osgd.lib openthreadswin32d.lib alut.lib openal32.lib  winmm.lib  dsound.lib vorbisfile_d.lib ogg_d.lib /nologo /dll /out:"..\..\bin\$(ProjectName)d.dll" /incremental:yes /nodefaultlib:"LIBCD" /debug /pdb:"..\..\lib\$(ProjectName)d.pdb" /pdbtype:sept /subsystem:windows /implib:"../../lib/$(ProjectName)d.lib" /MACHINE:I386
# ADD LINK32 kernel32.lib user32.lib gdi32.lib winspool.lib comdlg32.lib advapi32.lib shell32.lib ole32.lib oleaut32.lib uuid.lib odbc32.lib odbccp32.lib osgdbd.lib osgd.lib openthreadswin32d.lib alut.lib openal32.lib  winmm.lib  dsound.lib vorbisfile_d.lib ogg_d.lib /nologo /dll /out:"..\..\bin\$(ProjectName)d.dll" /incremental:yes /nodefaultlib:"LIBCD" /debug /pdb:"..\..\lib\$(ProjectName)d.pdb" /pdbtype:sept /subsystem:windows /implib:"../../lib/$(ProjectName)d.lib" /MACHINE:I386

!ELSEIF  "$(CFG)" == "oalpp - Win32 Release"

# PROP BASE Use_MFC 0
# PROP BASE Use_Debug_Libraries 0
# PROP BASE Output_Dir "../../lib"
# PROP BASE Intermediate_Dir ".\$(ProjectName)_release"
# PROP BASE Target_Dir ""
# PROP Use_MFC 0
# PROP Use_Debug_Libraries 0
# PROP Output_Dir "../../lib"
# PROP Intermediate_Dir ".\$(ProjectName)_release"
# PROP Target_Dir ""
# ADD BASE CPP /nologo /MD /I "../../include" /W3 /Ob1 /D "NDEBUG" /D "_WINDOWS" /D "_USRDLL" /D "OPENALPP_EXPORTS" /D "WIN32" /D "_MBCS" /GF /Gy /GR /YX /Fp".\Release/openalpp.pch" /Fo".\Release/" /Fd".\Release/" /c /GX 
# ADD CPP /nologo /MD /I "../../include" /W3 /Ob1 /D "NDEBUG" /D "_WINDOWS" /D "_USRDLL" /D "OPENALPP_EXPORTS" /D "WIN32" /D "_MBCS" /GF /Gy /GR /YX /Fp".\Release/openalpp.pch" /Fo".\Release/" /Fd".\Release/" /c /GX 
# ADD BASE MTL /nologo /D"NDEBUG" /mktyplib203 /tlb".\..\lib\openalpp.tlb" /win32 
# ADD MTL /nologo /D"NDEBUG" /mktyplib203 /tlb".\..\lib\openalpp.tlb" /win32 
# ADD BASE RSC /l 1053 /d "NDEBUG" 
# ADD RSC /l 1053 /d "NDEBUG" 
BSC32=bscmake.exe
# ADD BASE BSC32 /nologo 
# ADD BSC32 /nologo 
LINK32=link.exe
# ADD BASE LINK32 kernel32.lib user32.lib gdi32.lib winspool.lib comdlg32.lib advapi32.lib shell32.lib ole32.lib oleaut32.lib uuid.lib odbc32.lib odbccp32.lib osgdb.lib  osg.lib  openthreadswin32.lib alut.lib openal32.lib vorbisfile.lib ogg.lib winmm.lib wsock32.lib dsound.lib /nologo /dll /out:"..\..\bin\$(ProjectName).dll" /incremental:no /nodefaultlib:"LIBCD" /pdb:"..\..\lib\$(ProjectName).pdb" /pdbtype:sept /subsystem:windows /implib:"../../lib/$(ProjectName).lib" /MACHINE:I386
# ADD LINK32 kernel32.lib user32.lib gdi32.lib winspool.lib comdlg32.lib advapi32.lib shell32.lib ole32.lib oleaut32.lib uuid.lib odbc32.lib odbccp32.lib osgdb.lib  osg.lib  openthreadswin32.lib alut.lib openal32.lib vorbisfile.lib ogg.lib winmm.lib wsock32.lib dsound.lib /nologo /dll /out:"..\..\bin\$(ProjectName).dll" /incremental:no /nodefaultlib:"LIBCD" /pdb:"..\..\lib\$(ProjectName).pdb" /pdbtype:sept /subsystem:windows /implib:"../../lib/$(ProjectName).lib" /MACHINE:I386

!ENDIF

# Begin Target

# Name "oalpp - Win32 Debug"
# Name "oalpp - Win32 Release"
# Begin Group "Source files"

# PROP Default_Filter ""
# Begin Source File

SOURCE=..\..\src\openalpp\AudioBase.cpp
# End Source File
# Begin Source File

SOURCE=..\..\src\openalpp\AudioConvert.cpp
# End Source File
# Begin Source File

SOURCE=..\..\src\openalpp\AudioEnvironment.cpp
# End Source File
# Begin Source File

SOURCE=..\..\src\openalpp\Capture.cpp
# End Source File
# Begin Source File

SOURCE=..\..\src\openalpp\DeviceUpdater.cpp
# End Source File
# Begin Source File

SOURCE=..\..\src\openalpp\Error.cpp
# End Source File
# Begin Source File

SOURCE=..\..\src\openalpp\Event.cpp
# End Source File
# Begin Source File

SOURCE=..\..\src\openalpp\FileStream.cpp
# End Source File
# Begin Source File

SOURCE=..\..\src\openalpp\FileStreamUpdater.cpp
# End Source File
# Begin Source File

SOURCE=..\..\src\openalpp\GroupSource.cpp
# End Source File
# Begin Source File

SOURCE=..\..\src\openalpp\Listener.cpp
# End Source File
# Begin Source File

SOURCE=..\..\src\openalpp\NetStream.cpp
# End Source File
# Begin Source File

SOURCE=..\..\src\openalpp\NetUpdater.cpp
# End Source File
# Begin Source File

SOURCE=..\..\src\openalpp\Openalpp.cpp
# End Source File
# Begin Source File

SOURCE=..\..\src\openalpp\Sample.cpp
# End Source File
# Begin Source File

SOURCE=..\..\src\openalpp\SoundData.cpp
# End Source File
# Begin Source File

SOURCE=..\..\src\openalpp\Source.cpp
# End Source File
# Begin Source File

SOURCE=..\..\src\openalpp\SourceBase.cpp
# End Source File
# Begin Source File

SOURCE=..\..\src\openalpp\Stream.cpp
# End Source File
# Begin Source File

SOURCE=..\..\src\openalpp\StreamUpdater.cpp
# End Source File
# End Group
# Begin Group "Header files"

# PROP Default_Filter ""
# Begin Source File

SOURCE=..\..\include\openalpp\AudioBase
# End Source File
# Begin Source File

SOURCE=..\..\include\openalpp\AudioConvert
# End Source File
# Begin Source File

SOURCE=..\..\include\openalpp\AudioEnvironment
# End Source File
# Begin Source File

SOURCE=..\..\include\openalpp\Capture
# End Source File
# Begin Source File

SOURCE=..\..\include\openalpp\config
# End Source File
# Begin Source File

SOURCE=..\..\include\openalpp\DeviceUpdater
# End Source File
# Begin Source File

SOURCE=..\..\include\openalpp\Error
# End Source File
# Begin Source File

SOURCE=..\..\include\openalpp\Event
# End Source File
# Begin Source File

SOURCE=..\..\include\openalpp\Export
# End Source File
# Begin Source File

SOURCE=..\..\include\openalpp\FileStream
# End Source File
# Begin Source File

SOURCE=..\..\include\openalpp\FileStreamUpdater
# End Source File
# Begin Source File

SOURCE=..\..\include\openalpp\GroupSource
# End Source File
# Begin Source File

SOURCE=..\..\include\openalpp\Listener
# End Source File
# Begin Source File

SOURCE=..\..\include\openalpp\NetStream
# End Source File
# Begin Source File

SOURCE=..\..\include\openalpp\NetUpdater
# End Source File
# Begin Source File

SOURCE=..\..\include\openalpp\PositionedObject
# End Source File
# Begin Source File

SOURCE=..\..\include\openalpp\Sample
# End Source File
# Begin Source File

SOURCE=..\..\include\openalpp\SoundData
# End Source File
# Begin Source File

SOURCE=..\..\include\openalpp\Source
# End Source File
# Begin Source File

SOURCE=..\..\include\openalpp\SourceBase
# End Source File
# Begin Source File

SOURCE=..\..\include\openalpp\Stream
# End Source File
# Begin Source File

SOURCE=..\..\include\openalpp\StreamUpdater
# End Source File
# Begin Source File

SOURCE=..\..\include\openalpp\windowsstuff
# End Source File
# End Group
# End Target
# End Project

