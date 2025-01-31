@echo off
title File Manager
goto :start

:start
echo ====================================================
echo ====================================================
echo ====================================================
echo ================= File Manager =====================
echo ====================================================
echo ====================================================
echo ====================================================
echo.
echo 1. Create a File
echo 2. Edit a File
echo 3. View a File
echo 4. View current directory
echo 5. Exit
set /p answer=">>"
if %answer%==1 goto :create
if %answer%==2 goto :edit
if %answer%==3 goto :view
if %answer%==4 goto :view_dir
if %answer%--5 goto :exit

:create
echo dd > file%random%.txt
start messages/successful_create.vbs
goto start

:edit
echo.
echo Enter content for the file:
set /p %file%=">>"
echo Enter name of the file (without extension)
set /p %filename%=">>"
echo %file% > %filename%.txt
start messages/successful_edit.vbs
goto start

:view
echo Enter filename for the file without extension
set /p %filename2%=">>"
type %filename2%.txt
pause
goto start

:view_dir
dir
pause
goto start

:exit
echo bye!
pause
exit
