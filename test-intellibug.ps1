$ErrorActionPreference = 'Stop'
Write-Host 'Checking Java...'
java -version
Write-Host 'Checking Maven...'
mvn -version
Write-Host 'Running IntelliBug regression tests...'
mvn clean test
if ($LASTEXITCODE -ne 0) {
    Write-Error 'Tests failed. Review the first [ERROR] message above.'
    exit $LASTEXITCODE
}
Write-Host 'Tests completed successfully.'
