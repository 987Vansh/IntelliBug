$ErrorActionPreference = 'Stop'
Write-Host 'IntelliBug Phase 10 launcher'
Write-Host 'Checking Java 21 and Maven...'
java -version
if ($LASTEXITCODE -ne 0) { throw 'Java is not available. Install JDK 21 and configure PATH.' }
mvn -version
if ($LASTEXITCODE -ne 0) { throw 'Maven is not available. Install Maven 3.9+ and configure PATH.' }

Write-Host 'Running clean regression tests first...'
mvn clean test
if ($LASTEXITCODE -ne 0) {
    throw 'Regression tests failed. IntelliBug will not be launched; review Maven output.'
}

Write-Host 'Launching IntelliBug...'
mvn javafx:run
exit $LASTEXITCODE
