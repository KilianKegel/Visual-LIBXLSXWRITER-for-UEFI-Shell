@echo off
rem
rem this batch starts the Visual Studio "main" solution, including all subordinated projects
rem
@start Visual-LIBXLSXWRITER-for-UEFI.sln
echo.
echo This VS2022 solution provides all LIBXLSXWRITER related functions
echo and third party libraries in one single library binary: 
echo.
echo     Visual-LIBXLSXWRITER-for-UEFI.lib
echo.
echo NOTE: For UEFI Shell projects an additional library is needed:
echo.
echo     Visual-LIBWIN32-for-UEFI.lib
@ping -n 16 127.0.0.0 > NUL