echo.
echo Building NoteWriter Debug
echo.
NMAKE /f "NoteWriter.mak" CFG="NoteWriter - Win32 Debug"
echo.
echo Building NoteWriter Release
echo.
NMAKE /f "NoteWriter.mak" CFG="NoteWriter - Win32 Release"
echo.
cd icons_dll
echo.
echo Building Icons Debug
echo.
NMAKE /f "icons.mak" CFG="Icons - Win32 Debug"
echo.
echo Building Icons Release
echo.
NMAKE /f "icons.mak" CFG="Icons - Win32 Release"
echo.
cd..