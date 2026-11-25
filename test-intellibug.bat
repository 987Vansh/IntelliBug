@echo off
echo Running IntelliBug regression tests...
mvn clean test
if errorlevel 1 (
  echo Tests failed. Review the Maven output above.
  pause
  exit /b 1
)
echo Tests completed successfully.
pause
