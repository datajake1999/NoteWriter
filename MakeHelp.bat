@echo off
REM -- First make map file from Microsoft Visual C++ generated resource.h
echo // MAKEHELP.BAT generated Help Map file.  Used by NOTEWRITER.HPJ. >"hlp\NoteWriter.hm"
echo. >>"hlp\NoteWriter.hm"
echo // Commands (ID_* and IDM_*) >>"hlp\NoteWriter.hm"
makehm ID_,HID_,0x10000 IDM_,HIDM_,0x10000 resource.h >>"hlp\NoteWriter.hm"
echo. >>"hlp\NoteWriter.hm"
echo // Prompts (IDP_*) >>"hlp\NoteWriter.hm"
makehm IDP_,HIDP_,0x30000 resource.h >>"hlp\NoteWriter.hm"
echo. >>"hlp\NoteWriter.hm"
echo // Resources (IDR_*) >>"hlp\NoteWriter.hm"
makehm IDR_,HIDR_,0x20000 resource.h >>"hlp\NoteWriter.hm"
echo. >>"hlp\NoteWriter.hm"
echo // Dialogs (IDD_*) >>"hlp\NoteWriter.hm"
makehm IDD_,HIDD_,0x20000 resource.h >>"hlp\NoteWriter.hm"
echo. >>"hlp\NoteWriter.hm"
echo // Frame Controls (IDW_*) >>"hlp\NoteWriter.hm"
makehm IDW_,HIDW_,0x50000 resource.h >>"hlp\NoteWriter.hm"
REM -- Make help for Project NOTEWRITER


echo Building Win32 Help files
start /wait hcw /C /E /M "hlp\NoteWriter.hpj"
if errorlevel 1 goto :Error
if not exist "hlp\NoteWriter.hlp" goto :Error
if not exist "hlp\NoteWriter.cnt" goto :Error
echo.
if exist Debug\nul copy "hlp\NoteWriter.hlp" Debug
if exist Debug\nul copy "hlp\NoteWriter.cnt" Debug
if exist Release\nul copy "hlp\NoteWriter.hlp" Release
if exist Release\nul copy "hlp\NoteWriter.cnt" Release
echo.
goto :done

:Error
echo hlp\NoteWriter.hpj(1) : error: Problem encountered creating help file

:done
echo.
