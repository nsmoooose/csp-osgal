# Microsoft Developer Studio Project File - Name="osgPlugin_osgAL" - Package Owner=<4>
# Microsoft Developer Studio Generated Build File, Format Version 6.00
# ** DO NOT EDIT **

# TARGTYPE "Win32 (x86) Dynamic-Link Library" 0x0102

CFG=osgPlugin_osgAL - Win32 Debug
!MESSAGE This is not a valid makefile. To build this project using NMAKE,
!MESSAGE use the Export Makefile command and run
!MESSAGE 
!MESSAGE NMAKE /f "osgPlugin_osgAL.mak".
!MESSAGE 
!MESSAGE You can specify a configuration when running NMAKE
!MESSAGE by defining the macro CFG on the command line. For example:
!MESSAGE 
!MESSAGE NMAKE /f "osgPlugin_osgAL.mak" CFG="osgPlugin_osgAL - Win32 Debug"
!MESSAGE 
!MESSAGE Possible choices for configuration are:
!MESSAGE 
!MESSAGE "osgPlugin_osgAL - Win32 Debug" (based on "Win32 (x86) Dynamic-Link Library")
!MESSAGE "osgPlugin_osgAL - Win32 Release" (based on "Win32 (x86) Dynamic-Link Library")
!MESSAGE 

# Begin Project
# PROP AllowPerConfigDependencies 0
# PROP Scc_ProjName ""
# PROP Scc_LocalPath ""
CPP=cl.exe
MTL=midl.exe
RSC=rc.exe

!IF  "$(CFG)" == "osgPlugin_osgAL - Win32 Debug"

# PROP BASE Use_MFC 0
# PROP BASE Use_Debug_Libraries 1
# PROP BASE Output_Dir "../../bin"
# PROP BASE Intermediate_Dir "Debug"
# PROP BASE Target_Dir ""
# PROP Use_MFC 0
# PROP Use_Debug_Libraries 1
# PROP Output_Dir "../../bin"
# PROP Intermediate_Dir "Debug"
# PROP Target_Dir ""
# ADD BASE CPP /nologo /MDd /I "../../include" /ZI /W3 /Od /D "WIN32" /D "_DEBUG" /D "_WINDOWS" /D "_USRDLL" /D "OSGPLUGINOSGAL_EXPORTS" /D "_MBCS" /Gm /GR PRECOMP_VC7_TOBEREMOVED /GZ /c /GX 
# ADD CPP /nologo /MDd /I "../../include" /ZI /W3 /Od /D "WIN32" /D "_DEBUG" /D "_WINDOWS" /D "_USRDLL" /D "OSGPLUGINOSGAL_EXPORTS" /D "_MBCS" /Gm /GR PRECOMP_VC7_TOBEREMOVED /GZ /c /GX 
# ADD BASE MTL /nologo /win32 
# ADD MTL /nologo /win32 
# ADD BASE RSC /l 1033 
# ADD RSC /l 1033 
BSC32=bscmake.exe
# ADD BASE BSC32 /nologo 
# ADD BSC32 /nologo 
LINK32=link.exe
# ADD BASE LINK32 kernel32.lib user32.lib gdi32.lib winspool.lib comdlg32.lib advapi32.lib shell32.lib ole32.lib oleaut32.lib uuid.lib odbc32.lib odbccp32.lib osgd.lib osgDBd.lib /nologo /dll /out:"..\..\bin\osgdb_osgALd.dll" /incremental:yes /debug /pdb:"..\..\bin\dot_osgALd.pdb" /pdbtype:sept /subsystem:windows /implib:"../../lib/osgdb_osgALd.lib" /machine:ix86 
# ADD LINK32 kernel32.lib user32.lib gdi32.lib winspool.lib comdlg32.lib advapi32.lib shell32.lib ole32.lib oleaut32.lib uuid.lib odbc32.lib odbccp32.lib osgd.lib osgDBd.lib /nologo /dll /out:"..\..\bin\osgdb_osgALd.dll" /incremental:yes /debug /pdb:"..\..\bin\dot_osgALd.pdb" /pdbtype:sept /subsystem:windows /implib:"../../lib/osgdb_osgALd.lib" /machine:ix86 

!ELSEIF  "$(CFG)" == "osgPlugin_osgAL - Win32 Release"

# PROP BASE Use_MFC 0
# PROP BASE Use_Debug_Libraries 0
# PROP BASE Output_Dir "../../bin"
# PROP BASE Intermediate_Dir "Release"
# PROP BASE Target_Dir ""
# PROP Use_MFC 0
# PROP Use_Debug_Libraries 0
# PROP Output_Dir "../../bin"
# PROP Intermediate_Dir "Release"
# PROP Target_Dir ""
# ADD BASE CPP /nologo /MD /I "../../include" /Zi /W3 /Ob1 /Oy /D "WIN32" /D "NDEBUG" /D "_WINDOWS" /D "_USRDLL" /D "OSGPLUGINOSGAL_EXPORTS" /D "_MBCS" /GF /Gy /GR PRECOMP_VC7_TOBEREMOVED /c /GX 
# ADD CPP /nologo /MD /I "../../include" /Zi /W3 /Ob1 /Oy /D "WIN32" /D "NDEBUG" /D "_WINDOWS" /D "_USRDLL" /D "OSGPLUGINOSGAL_EXPORTS" /D "_MBCS" /GF /Gy /GR PRECOMP_VC7_TOBEREMOVED /c /GX 
# ADD BASE MTL /nologo /win32 
# ADD MTL /nologo /win32 
# ADD BASE RSC /l 1033 
# ADD RSC /l 1033 
BSC32=bscmake.exe
# ADD BASE BSC32 /nologo 
# ADD BSC32 /nologo 
LINK32=link.exe
# ADD BASE LINK32 kernel32.lib user32.lib gdi32.lib winspool.lib comdlg32.lib advapi32.lib shell32.lib ole32.lib oleaut32.lib uuid.lib odbc32.lib odbccp32.lib osg.lib osgDB.lib  /nologo /dll /out:"..\..\bin\osgdb_osgAL.dll" /incremental:no /pdbtype:sept /subsystem:windows /opt:ref /opt:icf /implib:"../../lib/osgdb_osgAL.lib" /machine:ix86 
# ADD LINK32 kernel32.lib user32.lib gdi32.lib winspool.lib comdlg32.lib advapi32.lib shell32.lib ole32.lib oleaut32.lib uuid.lib odbc32.lib odbccp32.lib osg.lib osgDB.lib  /nologo /dll /out:"..\..\bin\osgdb_osgAL.dll" /incremental:no /pdbtype:sept /subsystem:windows /opt:ref /opt:icf /implib:"../../lib/osgdb_osgAL.lib" /machine:ix86 

!ENDIF

# Begin Target

# Name "osgPlugin_osgAL - Win32 Debug"
# Name "osgPlugin_osgAL - Win32 Release"
# Begin Source File

SOURCE=..\..\src\osgPlugin\IO_OccludeCallback.cpp
# End Source File
# Begin Source File

SOURCE=..\..\src\osgPlugin\IO_SoundNode.cpp
# End Source File
# Begin Source File

SOURCE=..\..\src\osgPlugin\IO_SoundRoot.cpp
# End Source File
# Begin Source File

SOURCE=..\..\src\osgPlugin\IO_SoundState.cpp
# End Source File
# End Target
# End Project

