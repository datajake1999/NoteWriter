# Microsoft Developer Studio Generated NMAKE File, Based on NoteWriter.dsp
!IF "$(CFG)" == ""
CFG=NoteWriter - Win32 Debug
!MESSAGE No configuration specified. Defaulting to NoteWriter - Win32 Debug.
!ENDIF 

!IF "$(CFG)" != "NoteWriter - Win32 Release" && "$(CFG)" != "NoteWriter - Win32 Debug"
!MESSAGE Invalid configuration "$(CFG)" specified.
!MESSAGE You can specify a configuration when running NMAKE
!MESSAGE by defining the macro CFG on the command line. For example:
!MESSAGE 
!MESSAGE NMAKE /f "NoteWriter.mak" CFG="NoteWriter - Win32 Debug"
!MESSAGE 
!MESSAGE Possible choices for configuration are:
!MESSAGE 
!MESSAGE "NoteWriter - Win32 Release" (based on "Win32 (x86) Application")
!MESSAGE "NoteWriter - Win32 Debug" (based on "Win32 (x86) Application")
!MESSAGE 
!ERROR An invalid configuration is specified.
!ENDIF 

!IF "$(OS)" == "Windows_NT"
NULL=
!ELSE 
NULL=nul
!ENDIF 

!IF  "$(CFG)" == "NoteWriter - Win32 Release"

OUTDIR=.\Release
INTDIR=.\Release
# Begin Custom Macros
OutDir=.\Release
# End Custom Macros

ALL : ".\Release\NoteWriter.hlp" ".\Release\NoteWriter.cnt" "$(OUTDIR)\NoteWriter.exe" "$(OUTDIR)\NoteWriter.tlb"


CLEAN :
	-@erase "$(INTDIR)\ChildFrm.obj"
	-@erase "$(INTDIR)\CntrItem.obj"
	-@erase "$(INTDIR)\IpFrame.obj"
	-@erase "$(INTDIR)\MainFrm.obj"
	-@erase "$(INTDIR)\NoteWriter.obj"
	-@erase "$(INTDIR)\NoteWriter.pch"
	-@erase "$(INTDIR)\NoteWriter.res"
	-@erase "$(INTDIR)\NoteWriter.tlb"
	-@erase "$(INTDIR)\NoteWriterDoc.obj"
	-@erase "$(INTDIR)\NoteWriterView.obj"
	-@erase "$(INTDIR)\SrvrItem.obj"
	-@erase "$(INTDIR)\StdAfx.obj"
	-@erase "$(INTDIR)\vc60.idb"
	-@erase "$(OUTDIR)\NoteWriter.exe"
	-@erase ".\Release\NoteWriter.cnt"
	-@erase ".\Release\NoteWriter.hlp"

"$(OUTDIR)" :
    if not exist "$(OUTDIR)/$(NULL)" mkdir "$(OUTDIR)"

CPP=cl.exe
CPP_PROJ=/nologo /MD /W3 /GX /O2 /D "WIN32" /D "NDEBUG" /D "_WINDOWS" /D "_AFXDLL" /D "_MBCS" /Fp"$(INTDIR)\NoteWriter.pch" /Yu"stdafx.h" /Fo"$(INTDIR)\\" /Fd"$(INTDIR)\\" /FD /c 

.c{$(INTDIR)}.obj::
   $(CPP) @<<
   $(CPP_PROJ) $< 
<<

.cpp{$(INTDIR)}.obj::
   $(CPP) @<<
   $(CPP_PROJ) $< 
<<

.cxx{$(INTDIR)}.obj::
   $(CPP) @<<
   $(CPP_PROJ) $< 
<<

.c{$(INTDIR)}.sbr::
   $(CPP) @<<
   $(CPP_PROJ) $< 
<<

.cpp{$(INTDIR)}.sbr::
   $(CPP) @<<
   $(CPP_PROJ) $< 
<<

.cxx{$(INTDIR)}.sbr::
   $(CPP) @<<
   $(CPP_PROJ) $< 
<<

MTL=midl.exe
MTL_PROJ=/nologo /D "NDEBUG" /mktyplib203 /win32 
RSC=rc.exe
RSC_PROJ=/l 0x409 /fo"$(INTDIR)\NoteWriter.res" /d "NDEBUG" /d "_AFXDLL" 
BSC32=bscmake.exe
BSC32_FLAGS=/nologo /o"$(OUTDIR)\NoteWriter.bsc" 
BSC32_SBRS= \
	
LINK32=link.exe
LINK32_FLAGS=/nologo /subsystem:windows /incremental:no /pdb:"$(OUTDIR)\NoteWriter.pdb" /machine:I386 /out:"$(OUTDIR)\NoteWriter.exe" 
LINK32_OBJS= \
	"$(INTDIR)\ChildFrm.obj" \
	"$(INTDIR)\CntrItem.obj" \
	"$(INTDIR)\IpFrame.obj" \
	"$(INTDIR)\MainFrm.obj" \
	"$(INTDIR)\NoteWriter.obj" \
	"$(INTDIR)\NoteWriterDoc.obj" \
	"$(INTDIR)\NoteWriterView.obj" \
	"$(INTDIR)\SrvrItem.obj" \
	"$(INTDIR)\StdAfx.obj" \
	"$(INTDIR)\NoteWriter.res"

"$(OUTDIR)\NoteWriter.exe" : "$(OUTDIR)" $(DEF_FILE) $(LINK32_OBJS)
    $(LINK32) @<<
  $(LINK32_FLAGS) $(LINK32_OBJS)
<<

!ELSEIF  "$(CFG)" == "NoteWriter - Win32 Debug"

OUTDIR=.\Debug
INTDIR=.\Debug
# Begin Custom Macros
OutDir=.\Debug
# End Custom Macros

ALL : ".\Debug\NoteWriter.hlp" ".\Debug\NoteWriter.cnt" "$(OUTDIR)\NoteWriter.exe" "$(OUTDIR)\NoteWriter.tlb"


CLEAN :
	-@erase "$(INTDIR)\ChildFrm.obj"
	-@erase "$(INTDIR)\CntrItem.obj"
	-@erase "$(INTDIR)\IpFrame.obj"
	-@erase "$(INTDIR)\MainFrm.obj"
	-@erase "$(INTDIR)\NoteWriter.obj"
	-@erase "$(INTDIR)\NoteWriter.pch"
	-@erase "$(INTDIR)\NoteWriter.res"
	-@erase "$(INTDIR)\NoteWriter.tlb"
	-@erase "$(INTDIR)\NoteWriterDoc.obj"
	-@erase "$(INTDIR)\NoteWriterView.obj"
	-@erase "$(INTDIR)\SrvrItem.obj"
	-@erase "$(INTDIR)\StdAfx.obj"
	-@erase "$(INTDIR)\vc60.idb"
	-@erase "$(INTDIR)\vc60.pdb"
	-@erase "$(OUTDIR)\NoteWriter.exe"
	-@erase "$(OUTDIR)\NoteWriter.ilk"
	-@erase "$(OUTDIR)\NoteWriter.pdb"
	-@erase ".\Debug\NoteWriter.cnt"
	-@erase ".\Debug\NoteWriter.hlp"

"$(OUTDIR)" :
    if not exist "$(OUTDIR)/$(NULL)" mkdir "$(OUTDIR)"

CPP=cl.exe
CPP_PROJ=/nologo /MDd /W3 /Gm /GX /ZI /Od /D "WIN32" /D "_DEBUG" /D "_WINDOWS" /D "_AFXDLL" /D "_MBCS" /Fp"$(INTDIR)\NoteWriter.pch" /Yu"stdafx.h" /Fo"$(INTDIR)\\" /Fd"$(INTDIR)\\" /FD /GZ /c 

.c{$(INTDIR)}.obj::
   $(CPP) @<<
   $(CPP_PROJ) $< 
<<

.cpp{$(INTDIR)}.obj::
   $(CPP) @<<
   $(CPP_PROJ) $< 
<<

.cxx{$(INTDIR)}.obj::
   $(CPP) @<<
   $(CPP_PROJ) $< 
<<

.c{$(INTDIR)}.sbr::
   $(CPP) @<<
   $(CPP_PROJ) $< 
<<

.cpp{$(INTDIR)}.sbr::
   $(CPP) @<<
   $(CPP_PROJ) $< 
<<

.cxx{$(INTDIR)}.sbr::
   $(CPP) @<<
   $(CPP_PROJ) $< 
<<

MTL=midl.exe
MTL_PROJ=/nologo /D "_DEBUG" /mktyplib203 /win32 
RSC=rc.exe
RSC_PROJ=/l 0x409 /fo"$(INTDIR)\NoteWriter.res" /d "_DEBUG" /d "_AFXDLL" 
BSC32=bscmake.exe
BSC32_FLAGS=/nologo /o"$(OUTDIR)\NoteWriter.bsc" 
BSC32_SBRS= \
	
LINK32=link.exe
LINK32_FLAGS=/nologo /subsystem:windows /incremental:yes /pdb:"$(OUTDIR)\NoteWriter.pdb" /debug /machine:I386 /out:"$(OUTDIR)\NoteWriter.exe" /pdbtype:sept 
LINK32_OBJS= \
	"$(INTDIR)\ChildFrm.obj" \
	"$(INTDIR)\CntrItem.obj" \
	"$(INTDIR)\IpFrame.obj" \
	"$(INTDIR)\MainFrm.obj" \
	"$(INTDIR)\NoteWriter.obj" \
	"$(INTDIR)\NoteWriterDoc.obj" \
	"$(INTDIR)\NoteWriterView.obj" \
	"$(INTDIR)\SrvrItem.obj" \
	"$(INTDIR)\StdAfx.obj" \
	"$(INTDIR)\NoteWriter.res"

"$(OUTDIR)\NoteWriter.exe" : "$(OUTDIR)" $(DEF_FILE) $(LINK32_OBJS)
    $(LINK32) @<<
  $(LINK32_FLAGS) $(LINK32_OBJS)
<<

!ENDIF 


!IF "$(NO_EXTERNAL_DEPS)" != "1"
!IF EXISTS("NoteWriter.dep")
!INCLUDE "NoteWriter.dep"
!ELSE 
!MESSAGE Warning: cannot find "NoteWriter.dep"
!ENDIF 
!ENDIF 


!IF "$(CFG)" == "NoteWriter - Win32 Release" || "$(CFG)" == "NoteWriter - Win32 Debug"
SOURCE=.\ChildFrm.cpp

"$(INTDIR)\ChildFrm.obj" : $(SOURCE) "$(INTDIR)" "$(INTDIR)\NoteWriter.pch"


SOURCE=.\CntrItem.cpp

"$(INTDIR)\CntrItem.obj" : $(SOURCE) "$(INTDIR)" "$(INTDIR)\NoteWriter.pch"


SOURCE=.\IpFrame.cpp

"$(INTDIR)\IpFrame.obj" : $(SOURCE) "$(INTDIR)" "$(INTDIR)\NoteWriter.pch"


SOURCE=.\MainFrm.cpp

"$(INTDIR)\MainFrm.obj" : $(SOURCE) "$(INTDIR)" "$(INTDIR)\NoteWriter.pch"


SOURCE=.\NoteWriter.cpp

"$(INTDIR)\NoteWriter.obj" : $(SOURCE) "$(INTDIR)" "$(INTDIR)\NoteWriter.pch"


SOURCE=.\hlp\NoteWriter.hpj

!IF  "$(CFG)" == "NoteWriter - Win32 Release"

OutDir=.\Release
TargetName=NoteWriter
InputPath=.\hlp\NoteWriter.hpj
InputName=NoteWriter
USERDEP__NOTEW="hlp\AfxCore.rtf"	"hlp\AfxPrint.rtf"	"hlp\$(TargetName).hm"	

"$(INTDIR)\NoteWriter.hlp" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)" $(USERDEP__NOTEW)
	<<tempfile.bat 
	@echo off 
	start /wait hcw /C /E /M "hlp\$(InputName).hpj" 
	if errorlevel 1 goto :Error 
	if not exist "hlp\$(InputName).hlp" goto :Error 
	copy "hlp\$(InputName).hlp" $(OutDir) 
	goto :done 
	:Error 
	echo hlp\$(InputName).hpj(1) : error: 
	type "hlp\$(InputName).log" 
	:done 
<< 
	

!ELSEIF  "$(CFG)" == "NoteWriter - Win32 Debug"

OutDir=.\Debug
TargetName=NoteWriter
InputPath=.\hlp\NoteWriter.hpj
InputName=NoteWriter
USERDEP__NOTEW="hlp\AfxCore.rtf"	"hlp\AfxPrint.rtf"	"hlp\$(TargetName).hm"	

"$(INTDIR)\NoteWriter.hlp" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)" $(USERDEP__NOTEW)
	<<tempfile.bat 
	@echo off 
	start /wait hcw /C /E /M "hlp\$(InputName).hpj" 
	if errorlevel 1 goto :Error 
	if not exist "hlp\$(InputName).hlp" goto :Error 
	copy "hlp\$(InputName).hlp" $(OutDir) 
	goto :done 
	:Error 
	echo hlp\$(InputName).hpj(1) : error: 
	type "hlp\$(InputName).log" 
	:done 
<< 
	

!ENDIF 

SOURCE=.\NoteWriter.odl

!IF  "$(CFG)" == "NoteWriter - Win32 Release"

MTL_SWITCHES=/nologo /D "NDEBUG" /tlb "$(OUTDIR)\NoteWriter.tlb" /mktyplib203 /win32 

"$(OUTDIR)\NoteWriter.tlb" : $(SOURCE) "$(OUTDIR)"
	$(MTL) @<<
  $(MTL_SWITCHES) $(SOURCE)
<<


!ELSEIF  "$(CFG)" == "NoteWriter - Win32 Debug"

MTL_SWITCHES=/nologo /D "_DEBUG" /tlb "$(OUTDIR)\NoteWriter.tlb" /mktyplib203 /win32 

"$(OUTDIR)\NoteWriter.tlb" : $(SOURCE) "$(OUTDIR)"
	$(MTL) @<<
  $(MTL_SWITCHES) $(SOURCE)
<<


!ENDIF 

SOURCE=.\NoteWriter.rc

!IF  "$(CFG)" == "NoteWriter - Win32 Release"


"$(INTDIR)\NoteWriter.res" : $(SOURCE) "$(INTDIR)"
	$(RSC) /l 0x409 /fo"$(INTDIR)\NoteWriter.res" /i "Release" /d "NDEBUG" /d "_AFXDLL" $(SOURCE)


!ELSEIF  "$(CFG)" == "NoteWriter - Win32 Debug"


"$(INTDIR)\NoteWriter.res" : $(SOURCE) "$(INTDIR)"
	$(RSC) /l 0x409 /fo"$(INTDIR)\NoteWriter.res" /i "Debug" /d "_DEBUG" /d "_AFXDLL" $(SOURCE)


!ENDIF 

SOURCE=.\NoteWriterDoc.cpp

"$(INTDIR)\NoteWriterDoc.obj" : $(SOURCE) "$(INTDIR)" "$(INTDIR)\NoteWriter.pch"


SOURCE=.\NoteWriterView.cpp

"$(INTDIR)\NoteWriterView.obj" : $(SOURCE) "$(INTDIR)" "$(INTDIR)\NoteWriter.pch"


SOURCE=.\SrvrItem.cpp

"$(INTDIR)\SrvrItem.obj" : $(SOURCE) "$(INTDIR)" "$(INTDIR)\NoteWriter.pch"


SOURCE=.\StdAfx.cpp

!IF  "$(CFG)" == "NoteWriter - Win32 Release"

CPP_SWITCHES=/nologo /MD /W3 /GX /O2 /D "WIN32" /D "NDEBUG" /D "_WINDOWS" /D "_AFXDLL" /D "_MBCS" /Fp"$(INTDIR)\NoteWriter.pch" /Yc"stdafx.h" /Fo"$(INTDIR)\\" /Fd"$(INTDIR)\\" /FD /c 

"$(INTDIR)\StdAfx.obj"	"$(INTDIR)\NoteWriter.pch" : $(SOURCE) "$(INTDIR)"
	$(CPP) @<<
  $(CPP_SWITCHES) $(SOURCE)
<<


!ELSEIF  "$(CFG)" == "NoteWriter - Win32 Debug"

CPP_SWITCHES=/nologo /MDd /W3 /Gm /GX /ZI /Od /D "WIN32" /D "_DEBUG" /D "_WINDOWS" /D "_AFXDLL" /D "_MBCS" /Fp"$(INTDIR)\NoteWriter.pch" /Yc"stdafx.h" /Fo"$(INTDIR)\\" /Fd"$(INTDIR)\\" /FD /GZ /c 

"$(INTDIR)\StdAfx.obj"	"$(INTDIR)\NoteWriter.pch" : $(SOURCE) "$(INTDIR)"
	$(CPP) @<<
  $(CPP_SWITCHES) $(SOURCE)
<<


!ENDIF 

SOURCE=.\Resource.h

!IF  "$(CFG)" == "NoteWriter - Win32 Release"

TargetName=NoteWriter
InputPath=.\Resource.h

".\hlp\NoteWriter.hm" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
	<<tempfile.bat 
	@echo off 
	echo. >"hlp\$(TargetName).hm" 
	echo // Commands (ID_* and IDM_*) >>"hlp\$(TargetName).hm" 
	makehm ID_,HID_,0x10000 IDM_,HIDM_,0x10000 resource.h >>"hlp\$(TargetName).hm" 
	echo. >>"hlp\$(TargetName).hm" 
	echo // Prompts (IDP_*) >>"hlp\$(TargetName).hm" 
	makehm IDP_,HIDP_,0x30000 resource.h >>"hlp\$(TargetName).hm" 
	echo. >>"hlp\$(TargetName).hm" 
	echo // Resources (IDR_*) >>"hlp\$(TargetName).hm" 
	makehm IDR_,HIDR_,0x20000 resource.h >>"hlp\$(TargetName).hm" 
	echo. >>"hlp\$(TargetName).hm" 
	echo // Dialogs (IDD_*) >>"hlp\$(TargetName).hm" 
	makehm IDD_,HIDD_,0x20000 resource.h >>"hlp\$(TargetName).hm" 
	echo. >>"hlp\$(TargetName).hm" 
	echo // Frame Controls (IDW_*) >>"hlp\$(TargetName).hm" 
	makehm IDW_,HIDW_,0x50000 resource.h >>"hlp\$(TargetName).hm" 
<< 
	

!ELSEIF  "$(CFG)" == "NoteWriter - Win32 Debug"

TargetName=NoteWriter
InputPath=.\Resource.h

".\hlp\NoteWriter.hm" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
	<<tempfile.bat 
	@echo off 
	echo. >"hlp\$(TargetName).hm" 
	echo // Commands (ID_* and IDM_*) >>"hlp\$(TargetName).hm" 
	makehm ID_,HID_,0x10000 IDM_,HIDM_,0x10000 resource.h >>"hlp\$(TargetName).hm" 
	echo. >>"hlp\$(TargetName).hm" 
	echo // Prompts (IDP_*) >>"hlp\$(TargetName).hm" 
	makehm IDP_,HIDP_,0x30000 resource.h >>"hlp\$(TargetName).hm" 
	echo. >>"hlp\$(TargetName).hm" 
	echo // Resources (IDR_*) >>"hlp\$(TargetName).hm" 
	makehm IDR_,HIDR_,0x20000 resource.h >>"hlp\$(TargetName).hm" 
	echo. >>"hlp\$(TargetName).hm" 
	echo // Dialogs (IDD_*) >>"hlp\$(TargetName).hm" 
	makehm IDD_,HIDD_,0x20000 resource.h >>"hlp\$(TargetName).hm" 
	echo. >>"hlp\$(TargetName).hm" 
	echo // Frame Controls (IDW_*) >>"hlp\$(TargetName).hm" 
	makehm IDW_,HIDW_,0x50000 resource.h >>"hlp\$(TargetName).hm" 
<< 
	

!ENDIF 

SOURCE=.\hlp\NoteWriter.cnt

!IF  "$(CFG)" == "NoteWriter - Win32 Release"

OutDir=.\Release
InputPath=.\hlp\NoteWriter.cnt
InputName=NoteWriter

"$(INTDIR)\NoteWriter.cnt" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
	<<tempfile.bat 
	@echo off 
	copy "hlp\$(InputName).cnt" $(OutDir)
<< 
	

!ELSEIF  "$(CFG)" == "NoteWriter - Win32 Debug"

OutDir=.\Debug
InputPath=.\hlp\NoteWriter.cnt
InputName=NoteWriter

"$(INTDIR)\NoteWriter.cnt" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
	<<tempfile.bat 
	@echo off 
	copy "hlp\$(InputName).cnt" $(OutDir)
<< 
	

!ENDIF 


!ENDIF 

