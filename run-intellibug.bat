@echo off
echo IntelliBug Phase 10 launcher
java -version
if errorlevel 1 goto :error
mvn -version
if errorlevel 1 goto :error
mvn clean test
if errorlevel 1 goto :error
mvn javafx:run
if errorlevel 1 goto :error
exit /b 0
:error
echo Launch failed. Review the first error above.
pause
exit /b 1
