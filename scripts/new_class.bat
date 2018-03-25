@echo off

cd..
set FILE_OUTPUT=.\project
set NEWCLASSBIN=.\utilities\NewClassProject\Build\NewClass.exe
set NEWCLASSBUILDSCRIPT=.\utilities\NewClassProject\scripts\build.bat
set TEMPLATES_PATH=.\utilities\NewClassProject\Templates

set FILE_NAME=test
set PROJECT_NAME=DCPP_COMPONENTS
set CLASS_NAME=CTest
set NAMESPACE=dc
set FOLDER=dir
set AUTHOR=Jorge López González

echo Build NewClassProject just if needed

call %NEWCLASSBUILDSCRIPT%

echo Create the class %CLASS_NAME% on %FOLDER% directory

%NEWCLASSBIN% %TEMPLATES_PATH% %FILE_OUTPUT% %FILE_NAME% %PROJECT_NAME% "Jorge López González" %CLASS_NAME% %NAMESPACE% %FOLDER%

exit