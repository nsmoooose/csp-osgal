# Microsoft Developer Studio Project File - Name="Core osgAL" - Package Owner=<4>
# Microsoft Developer Studio Generated Build File, Format Version 6.00
# ** DO NOT EDIT **

# TARGTYPE "Win32 (x86) Dynamic-Link Library" 0x0102

CFG=Core osgAL - Win32 Release
!MESSAGE This is not a valid makefile. To build this project using NMAKE,
!MESSAGE use the Export Makefile command and run
!MESSAGE 
!MESSAGE NMAKE /f "Core osgAL.mak".
!MESSAGE 
!MESSAGE You can specify a configuration when running NMAKE
!MESSAGE by defining the macro CFG on the command line. For example:
!MESSAGE 
!MESSAGE NMAKE /f "Core osgAL.mak" CFG="Core osgAL - Win32 Release"
!MESSAGE 
!MESSAGE Possible choices for configuration are:
!MESSAGE 
!MESSAGE "Core osgAL - Win32 Release" (based on "Win32 (x86) Dynamic-Link Library")
!MESSAGE "Core osgAL - Win32 Debug" (based on "Win32 (x86) Dynamic-Link Library")
!MESSAGE 

# Begin Project
# PROP AllowPerConfigDependencies 0
# PROP Scc_ProjName ""
# PROP Scc_LocalPath ""
CPP=cl.exe
MTL=midl.exe
RSC=rc.exe

!IF  "$(CFG)" == "Core osgAL - Win32 Release"

# PROP BASE Use_MFC 0
# PROP BASE Use_Debug_Libraries 0
# PROP BASE Output_Dir ".\../../lib"
# PROP BASE Intermediate_Dir ".\Release"
# PROP BASE Target_Dir ""
# PROP Use_MFC 0
# PROP Use_Debug_Libraries 0
# PROP Output_Dir ".\../../lib"
# PROP Intermediate_Dir ".\Release"
# PROP Target_Dir ""
# ADD BASE CPP /nologo /MD /I "../../include" /W3 /O2 /Ob1 /D "NDEBUG;_USRDLL;OSGAL_LIBRARY;WIN32;_WINDOWS" /D "USE_COLOSSEUM3D" /D "_MBCS" /GF /Gy /GR /YX /Fp".\Release/osgAL.pch" /Fo".\Release/" /Fd".\Release/" /c /GX 
# ADD CPP /nologo /MD /I "../../include" /W3 /O2 /Ob1 /D "NDEBUG;_USRDLL;OSGAL_LIBRARY;WIN32;_WINDOWS" /D "USE_COLOSSEUM3D" /D "_MBCS" /GF /Gy /GR /YX /Fp".\Release/osgAL.pch" /Fo".\Release/" /Fd".\Release/" /c /GX 
# ADD BASE MTL /nologo /D"NDEBUG" /mktyplib203 /tlb".\..\..\lib\osgAL.tlb" /win32 
# ADD MTL /nologo /D"NDEBUG" /mktyplib203 /tlb".\..\..\lib\osgAL.tlb" /win32 
# ADD BASE RSC /l 2057 /d "NDEBUG" 
# ADD RSC /l 2057 /d "NDEBUG" 
BSC32=bscmake.exe
# ADD BASE BSC32 /nologo 
# ADD BSC32 /nologo 
LINK32=link.exe
# ADD BASE LINK32 kernel32.lib user32.lib gdi32.lib winspool.lib comdlg32.lib advapi32.lib shell32.lib ole32.lib oleaut32.lib uuid.lib odbc32.lib odbccp32.lib osg.lib osgDB.lib osgutil.lib openthreads.lib /nologo /dll /out:"..\..\bin\osgAL.dll" /incremental:no /libpath:"../../lib" /pdbtype:sept /subsystem:windows /implib:".\../../lib/osgAL.lib" /machine:ix86 
# ADD LINK32 kernel32.lib user32.lib gdi32.lib winspool.lib comdlg32.lib advapi32.lib shell32.lib ole32.lib oleaut32.lib uuid.lib odbc32.lib odbccp32.lib osg.lib osgDB.lib osgutil.lib openthreads.lib /nologo /dll /out:"..\..\bin\osgAL.dll" /incremental:no /libpath:"../../lib" /pdbtype:sept /subsystem:windows /implib:".\../../lib/osgAL.lib" /machine:ix86 

!ELSEIF  "$(CFG)" == "Core osgAL - Win32 Debug"

# PROP BASE Use_MFC 0
# PROP BASE Use_Debug_Libraries 1
# PROP BASE Output_Dir ".\../../lib"
# PROP BASE Intermediate_Dir ".\Debug"
# PROP BASE Target_Dir ""
# PROP Use_MFC 0
# PROP Use_Debug_Libraries 1
# PROP Output_Dir ".\../../lib"
# PROP Intermediate_Dir ".\Debug"
# PROP Target_Dir ""
# ADD BASE CPP /nologo /MDd /I "../../include" /Zi /W3 /Od /D "OSGAL_LIBRARY;_WINDOWS;WIN32;_DEBUG" /D "USE_COLOSSEUM3Dx" /GR /YX /Fp".\Debug/osgAL.pch" /Fo".\Debug/" /Fd".\Debug/" /GZ /c /vmg/GX 
# ADD CPP /nologo /MDd /I "../../include" /Zi /W3 /Od /D "OSGAL_LIBRARY;_WINDOWS;WIN32;_DEBUG" /D "USE_COLOSSEUM3Dx" /GR /YX /Fp".\Debug/osgAL.pch" /Fo".\Debug/" /Fd".\Debug/" /GZ /c /vmg/GX 
# ADD BASE MTL /nologo /D"_DEBUG" /mktyplib203 /tlb".\..\..\lib\osgAL.tlb" /win32 
# ADD MTL /nologo /D"_DEBUG" /mktyplib203 /tlb".\..\..\lib\osgAL.tlb" /win32 
# ADD BASE RSC /l 2057 /d "_DEBUG" 
# ADD RSC /l 2057 /d "_DEBUG" 
BSC32=bscmake.exe
# ADD BASE BSC32 /nologo 
# ADD BSC32 /nologo 
LINK32=link.exe
# ADD BASE LINK32 kernel32.lib user32.lib gdi32.lib winspool.lib comdlg32.lib advapi32.lib shell32.lib ole32.lib oleaut32.lib uuid.lib odbc32.lib odbccp32.lib osgd.lib osgDBd.lib osgutild.lib openthreadsd.lib /nologo /dll /out:"..\..\bin\osgALd.dll" /incremental:no /libpath:"../../lib" /debug /pdb:".\..\..\lib\osgALd.pdb" /pdbtype:sept /subsystem:windows /implib:".\../../lib/osgALd.lib" /machine:ix86 
# ADD LINK32 kernel32.lib user32.lib gdi32.lib winspool.lib comdlg32.lib advapi32.lib shell32.lib ole32.lib oleaut32.lib uuid.lib odbc32.lib odbccp32.lib osgd.lib osgDBd.lib osgutild.lib openthreadsd.lib /nologo /dll /out:"..\..\bin\osgALd.dll" /incremental:no /libpath:"../../lib" /debug /pdb:".\..\..\lib\osgALd.pdb" /pdbtype:sept /subsystem:windows /implib:".\../../lib/osgALd.lib" /machine:ix86 

!ENDIF

# Begin Target

# Name "Core osgAL - Win32 Release"
# Name "Core osgAL - Win32 Debug"
# Begin Group "Source Files"

# PROP Default_Filter "cpp;c;cxx;rc;def;r;odl;idl;hpj;bat"
# Begin Source File

SOURCE=..\..\src\osgAL\OccludeCallback.cpp
# End Source File
# Begin Source File

SOURCE=..\..\src\osgAL\SoundManager.cpp
# End Source File
# Begin Source File

SOURCE=..\..\src\osgAL\SoundNode.cpp
# End Source File
# Begin Source File

SOURCE=..\..\src\osgAL\SoundRoot.cpp
# End Source File
# Begin Source File

SOURCE=..\..\src\osgAL\SoundState.cpp
# End Source File
# Begin Source File

SOURCE=..\..\src\osgAL\Version.cpp
# End Source File
# End Group
# Begin Group "Header Files"

# PROP Default_Filter ";h;hpp;hxx;hm;inl"
# Begin Source File

SOURCE=..\..\include\osgAL\Export
# End Source File
# Begin Source File

SOURCE=..\..\include\osgAL\OccludeCallback
# End Source File
# Begin Source File

SOURCE=..\..\include\osgAL\SoundManager
# End Source File
# Begin Source File

SOURCE=..\..\include\osgAL\SoundNode
# End Source File
# Begin Source File

SOURCE=..\..\include\osgAL\SoundRoot
# End Source File
# Begin Source File

SOURCE=..\..\include\osgAL\SoundState
# End Source File
# Begin Source File

SOURCE=..\..\include\osgAL\Version
# End Source File
# End Group
# End Target
# End Project

