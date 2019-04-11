@ECHO OFF
cd..
set MESSAGE=
set /P MESSAGE=Commit message: 
CHOICE /C:YN /M "are you sure you want to commit"
IF errorlevel 2 goto ENDS
IF errorlevel 1 goto COMMIT
:COMMIT
@ECHO ON
git commit -am "%MESSAGE%"
@ECHO OFF
:ENDS
PAUSE