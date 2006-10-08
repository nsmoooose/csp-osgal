# Microsoft Developer Studio Project File - Name="oalpp Example playOgg" - Package Owner=<4>
# Microsoft Developer Studio Generated Build File, Format Version 6.00
# ** DO NOT EDIT **

# TARGTYPE "Win32 (x86) Console Application" 0x0103

CFG=oalpp Example playOgg - Win32 Release
!MESSAGE This is not a valid makefile. To build this project using NMAKE,
!MESSAGE use the Export Makefile command and run
!MESSAGE 
!MESSAGE NMAKE /f "oalpp Example playOgg.mak".
!MESSAGE 
!MESSAGE You can specify a configuration when running NMAKE
!MESSAGE by defining the macro CFG on the command line. For example:
!MESSAGE 
!MESSAGE NMAKE /f "oalpp Example playOgg.mak" CFG="oalpp Example playOgg - Win32 Release"
!MESSAGE 
!MESSAGE Possible choices for configuration are:
!MESSAGE 
!MESSAGE "oalpp Example playOgg - Win32 Release" (based on "Win32 (x86) Console Application")
!MESSAGE "oalpp Example playOgg - Win32 Debug" (based on "Win32 (x86) Console Application")
!MESSAGE 

# Begin Project
# PROP AllowPerConfigDependencies 0
# PROP Scc_ProjName ""
# PROP Scc_LocalPath ""
CPP=cl.exe
MTL=midl.exe
RSC=rc.exe

!IF  "$(CFG)" == "oalpp Example playOgg - Win32 Release"

# PROP BASE Use_MFC 0
# PROP BASE Use_Debug_Libraries 0
# PROP BASE Output_Dir "..\..\..\bin"
# PROP BASE Intermediate_Dir ".\$(ProjectName)_release"
# PROP BASE Target_Dir ""
# PROP Use_MFC 0
# PROP Use_Debug_Libraries 0
# PROP Output_Dir "..\..\..\bin"
# PROP Intermediate_Dir ".\$(ProjectName)_release"
# PROP Target_Dir ""
# ADD BASE CPP /nologo /MD /I "../../../include" /W3 /Ob1 /D "WIN32" /D "NDEBUG" /D "_CONSOLE" /D "_MBCS" /GF /Gy /GR /YX /Fp".\$(IntDir)/$(TargetName).pch" /Fo"$(IntDir)/" /Fd"$(IntDir)/" /c /GX 
# ADD CPP /nologo /MD /I "../../../include" /W3 /Ob1 /D "WIN32" /D "NDEBUG" /D "_CONSOLE" /D "_MBCS" /GF /Gy /GR /YX /Fp".\$(IntDir)/$(TargetName).pch" /Fo"$(IntDir)/" /Fd"$(IntDir)/" /c /GX 
# ADD BASE MTL /nologo /tlb".\$(ProjectName)_release\playOgg.tlb" /win32 
# ADD MTL /nologo /tlb".\$(ProjectName)_release\playOgg.tlb" /win32 
# ADD BASE RSC /l 1053 /d "NDEBUG" 
# ADD RSC /l 1053 /d "NDEBUG" 
BSC32=bscmake.exe
# ADD BASE BSC32 /nologo 
# ADD BSC32 /nologo 
LINK32=link.exe
# ADD BASE LINK32 kernel32.lib user32.lib gdi32.lib winspool.lib comdlg32.lib advapi32.lib shell32.lib ole32.lib oleaut32.lib uuid.lib odbc32.lib odbccp32.lib osg.lib /nologo /out:"..\..\..\bin\oalpp_playOgg.exe" /incremental:no /libpath:"..\lib" /pdb:".\$(ProjectName)_release\$(TargetName).pdb" /pdbtype:sept /subsystem:console /MACHINE:I386
# ADD LINK32 kernel32.lib user32.lib gdi32.lib winspool.lib comdlg32.lib advapi32.lib shell32.lib ole32.lib oleaut32.lib uuid.lib odbc32.lib odbccp32.lib osg.lib /nologo /out:"..\..\..\bin\oalpp_playOgg.exe" /incremental:no /libpath:"..\lib" /pdb:".\$(ProjectName)_release\$(TargetName).pdb" /pdbtype:sept /subsystem:console /MACHINE:I386

!ELSEIF  "$(CFG)" == "oalpp Example playOgg - Win32 Debug"

# PROP BASE Use_MFC 0
# PROP BASE Use_Debug_Libraries 1
# PROP BASE Output_Dir "../../../bin"
# PROP BASE Intermediate_Dir ".\$(ProjectName)_debug"
# PROP BASE Target_Dir ""
# PROP Use_MFC 0
# PROP Use_Debug_Libraries 1
# PROP Output_Dir "../../../bin"
# PROP Intermediate_Dir ".\$(ProjectName)_debug"
# PROP Target_Dir ""
# ADD BASE CPP /nologo /MDd /I "../../../include" /ZI /W3 /Od /D "WIN32" /D "_DEBUG" /D "_CONSOLE" /D "_MBCS" /GR /YX /Fp".\$(IntDir)/$(TargetName)d.pch" /Fo"$(IntDir)/" /Fd"$(IntDir)/" /FR /GZ /c /GX 
# ADD CPP /nologo /MDd /I "../../../include" /ZI /W3 /Od /D "WIN32" /D "_DEBUG" /D "_CONSOLE" /D "_MBCS" /GR /YX /Fp".\$(IntDir)/$(TargetName)d.pch" /Fo"$(IntDir)/" /Fd"$(IntDir)/" /FR /GZ /c /GX 
# ADD BASE MTL /nologo /tlb".\.\$(ProjectName)_debug\$(TargetName)d.tlb" /win32 
# ADD MTL /nologo /tlb".\.\$(ProjectName)_debug\$(TargetName)d.tlb" /win32 
# ADD BASE RSC /l 1053 /d "_DEBUG" 
# ADD RSC /l 1053 /d "_DEBUG" 
BSC32=bscmake.exe
# ADD BASE BSC32 /nologo 
# ADD BSC32 /nologo 
LINK32=link.exe
# ADD BASE LINK32 kernel32.lib user32.lib gdi32.lib winspool.lib comdlg32.lib advapi32.lib shell32.lib ole32.lib oleaut32.lib uuid.lib odbc32.lib odbccp32.lib osgd.lib /nologo /out:"..\..\..\bin\oalpp_playOggd.exe" /incremental:yes /libpath:"..\lib" /debug /pdb:".\$(ProjectName)_debug\$(TargetName)d.pdb" /pdbtype:sept /subsystem:console /MACHINE:I386
# ADD LINK32 kernel32.lib user32.lib gdi32.lib winspool.lib comdlg32.lib advapi32.lib shell32.lib ole32.lib oleaut32.lib uuid.lib odbc32.lib odbccp32.lib osgd.lib /nologo /out:"..\..\..\bin\oalpp_playOggd.exe" /incremental:yes /libpath:"..\lib" /debug /pdb:".\$(ProjectName)_debug\$(TargetName)d.pdb" /pdbtype:sept /subsystem:console /MACHINE:I386

!ENDIF

# Begin Target

# Name "oalpp Example playOgg - Win32 Release"
# Name "oalpp Example playOgg - Win32 Debug"
# Begin Group "Source Files"

# PROP Default_Filter "cpp;c;cxx;rc;def;r;odl;idl;hpj;bat"
# Begin Source File

SOURCE=..\..\..\examples\openalpp\playOgg.cpp
# End Source File
# End Group
# End Target
# End Project

