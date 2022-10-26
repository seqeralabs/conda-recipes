nmake /f Makefile.nmake
if errorlevel 1 exit 1

xcopy include %LIBRARY_INC%\isa-l\ /E /H /F
if errorlevel 1 exit 1

copy isa-l.dll %LIBRARY_BIN%\isa-l.dll
if errorlevel 1 exit 1

copy isa-l.lib %LIBRARY_LIB%\isa-l.lib
if errorlevel 1 exit 1
