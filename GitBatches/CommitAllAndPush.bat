@ECHO OFF
cd..
set MESSAGE=
set /P MESSAGE=Commit message: 
CHOICE /C:YN /M "are you sure you want to push"
IF errorlevel 2 goto ENDS
IF errorlevel 1 goto COMMIT
:COMMIT
@ECHO ON
git add .
git commit -am "%MESSAGE%"
git push
@ECHO OFF
:ENDS
PAUSE