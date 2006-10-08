# Microsoft Developer Studio Project File - Name="Example osgAL" - Package Owner=<4>
# Microsoft Developer Studio Generated Build File, Format Version 6.00
# ** DO NOT EDIT **

# TARGTYPE "Win32 (x86) Console Application" 0x0103

CFG=Example osgAL - Win32 Debug
!MESSAGE This is not a valid makefile. To build this project using NMAKE,
!MESSAGE use the Export Makefile command and run
!MESSAGE 
!MESSAGE NMAKE /f "Example osgAL.mak".
!MESSAGE 
!MESSAGE You can specify a configuration when running NMAKE
!MESSAGE by defining the macro CFG on the command line. For example:
!MESSAGE 
!MESSAGE NMAKE /f "Example osgAL.mak" CFG="Example osgAL - Win32 Debug"
!MESSAGE 
!MESSAGE Possible choices for configuration are:
!MESSAGE 
!MESSAGE "Example osgAL - Win32 Debug" (based on "Win32 (x86) Console Application")
!MESSAGE "Example osgAL - Win32 Release" (based on "Win32 (x86) Console Application")
!MESSAGE 

# Begin Project
# PROP AllowPerConfigDependencies 0
# PROP Scc_ProjName ""
# PROP Scc_LocalPath ""
CPP=cl.exe
MTL=midl.exe
RSC=rc.exe

!IF  "$(CFG)" == "Example osgAL - Win32 Debug"

# PROP BASE Use_MFC 0
# PROP BASE Use_Debug_Libraries 1
# PROP BASE Output_Dir ".\Debug"
# PROP BASE Intermediate_Dir ".\Debug"
# PROP BASE Target_Dir ""
# PROP Use_MFC 0
# PROP Use_Debug_Libraries 1
# PROP Output_Dir ".\Debug"
# PROP Intermediate_Dir ".\Debug"
# PROP Target_Dir ""
# ADD BASE CPP /nologo /MDd /I "../../../include" /Zi /W3 /Od /D "_CONSOLE" /D "FL_DLL" /D "WIN32" /D "_DEBUG" /D "_MBCS" /GR /YX /Fp".\Debug/osgAL.pch" /Fo".\Debug/" /Fd".\Debug/" /FR /GZ /c /GX 
# ADD CPP /nologo /MDd /I "../../../include" /Zi /W3 /Od /D "_CONSOLE" /D "FL_DLL" /D "WIN32" /D "_DEBUG" /D "_MBCS" /GR /YX /Fp".\Debug/osgAL.pch" /Fo".\Debug/" /Fd".\Debug/" /FR /GZ /c /GX 
# ADD BASE MTL /nologo /tlb".\Debug\osgAL.tlb" /win32 
# ADD MTL /nologo /tlb".\Debug\osgAL.tlb" /win32 
# ADD BASE RSC /l 2057 /d "_DEBUG" 
# ADD RSC /l 2057 /d "_DEBUG" 
BSC32=bscmake.exe
# ADD BASE BSC32 /nologo 
# ADD BSC32 /nologo 
LINK32=link.exe
# ADD BASE LINK32 kernel32.lib user32.lib gdi32.lib winspool.lib comdlg32.lib advapi32.lib shell32.lib ole32.lib oleaut32.lib uuid.lib odbc32.lib odbccp32.lib osggad.lib oalppd.lib   osgd.lib osgproducerd.lib osgutild.lib osgdbd.lib /nologo /out:"..\..\..\bin\osgALd.exe" /incremental:no /libpath:"../../../lib" /nodefaultlib:"libcmt" /debug /pdb:".\Debug\osgALd.pdb" /pdbtype:sept /subsystem:console /machine:ix86 
# ADD LINK32 kernel32.lib user32.lib gdi32.lib winspool.lib comdlg32.lib advapi32.lib shell32.lib ole32.lib oleaut32.lib uuid.lib odbc32.lib odbccp32.lib osggad.lib oalppd.lib   osgd.lib osgproducerd.lib osgutild.lib osgdbd.lib /nologo /out:"..\..\..\bin\osgALd.exe" /incremental:no /libpath:"../../../lib" /nodefaultlib:"libcmt" /debug /pdb:".\Debug\osgALd.pdb" /pdbtype:sept /subsystem:console /machine:ix86 

!ELSEIF  "$(CFG)" == "Example osgAL - Win32 Release"

# PROP BASE Use_MFC 0
# PROP BASE Use_Debug_Libraries 0
# PROP BASE Output_Dir ".\Release"
# PROP BASE Intermediate_Dir ".\Release"
# PROP BASE Target_Dir ""
# PROP Use_MFC 0
# PROP Use_Debug_Libraries 0
# PROP Output_Dir ".\Release"
# PROP Intermediate_Dir ".\Release"
# PROP Target_Dir ""
# ADD BASE CPP /nologo /MD /I "../../../include" /W3 /O2 /Ob1 /D "WIN32" /D "NDEBUG" /D "_CONSOLE" /D "_MBCS" /GF /Gy /GR /YX /Fp".\Release/osgAL.pch" /Fo".\Release/" /Fd".\Release/" /c /GX 
# ADD CPP /nologo /MD /I "../../../include" /W3 /O2 /Ob1 /D "WIN32" /D "NDEBUG" /D "_CONSOLE" /D "_MBCS" /GF /Gy /GR /YX /Fp".\Release/osgAL.pch" /Fo".\Release/" /Fd".\Release/" /c /GX 
# ADD BASE MTL /nologo /tlb".\Release\osgAL.tlb" /win32 
# ADD MTL /nologo /tlb".\Release\osgAL.tlb" /win32 
# ADD BASE RSC /l 2057 /d "NDEBUG" 
# ADD RSC /l 2057 /d "NDEBUG" 
BSC32=bscmake.exe
# ADD BASE BSC32 /nologo 
# ADD BSC32 /nologo 
LINK32=link.exe
# ADD BASE LINK32 kernel32.lib user32.lib gdi32.lib winspool.lib comdlg32.lib advapi32.lib shell32.lib ole32.lib oleaut32.lib uuid.lib odbc32.lib odbccp32.lib osgga.lib oalpp.lib glu32.lib opengl32.lib osg.lib osgproducer.lib osgutil.lib osgAL.lib osgdb.lib /nologo /out:"..\..\..\bin\osgAL.exe" /incremental:no /libpath:"../../../lib" /pdbtype:sept /subsystem:console /machine:ix86 
# ADD LINK32 kernel32.lib user32.lib gdi32.lib winspool.lib comdlg32.lib advapi32.lib shell32.lib ole32.lib oleaut32.lib uuid.lib odbc32.lib odbccp32.lib osgga.lib oalpp.lib glu32.lib opengl32.lib osg.lib osgproducer.lib osgutil.lib osgAL.lib osgdb.lib /nologo /out:"..\..\..\bin\osgAL.exe" /incremental:no /libpath:"../../../lib" /pdbtype:sept /subsystem:console /machine:ix86 

!ENDIF

# Begin Target

# Name "Example osgAL - Win32 Debug"
# Name "Example osgAL - Win32 Release"
# Begin Source File

SOURCE=..\..\..\examples\osgal\osgal.cpp
# End Source File
# End Target
# End Project

