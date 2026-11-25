# IntelliBug — Phase 10 Release Package

**Final integration, packaging and project presentation**

IntelliBug is a Java 21 + JavaFX desktop bug-management and explainable prioritization application backed by MongoDB.

## Quick start (Windows)

Requirements:
- Java JDK 21 (verify with `java -version` and `javac -version`)
- Apache Maven 3.9+
- MongoDB Community Server running locally, or a reachable MongoDB connection string

1. Extract the ZIP.
2. Open the `IntelliBug-Phase10` folder (the folder containing `pom.xml`) in VS Code.
3. Ensure MongoDB is running.
4. Run `.un-intellibug.ps1` in PowerShell, or use the manual commands below.

```powershell
mvn clean test
mvn javafx:run
```

To run only the regression tests:

```powershell
mvn clean test
```

## MongoDB connection

By default, IntelliBug connects to:

`mongodb://127.0.0.1:27017`

and uses the database:

`intellibug`

To use another MongoDB URI, set the environment variable before launching:

```powershell
$env:INTELLIBUG_MONGO_URI = "mongodb://127.0.0.1:27017"
mvn javafx:run
```

For a hosted database, use its connection string and keep credentials private. Do not commit passwords or connection strings to source control.

## Included project capabilities

- Bug creation, search, filtering, editing, comments and deletion
- Explainable weighted priority scoring and P0–P4 priority bands
- Text analysis and TF-IDF-based duplicate similarity suggestions
- Dependency relationships and dependency graph
- Developer recommendation logic
- Intelligence dashboard and analytics
- Live dashboard refresh and escalation monitoring
- What-if Simulation Lab and Risk Radar
- Automated regression tests for core priority and NLP behavior

Feature availability depends on the corresponding Phase 5–9 implementation. The NLP duplicate detector uses lexical TF-IDF similarity; it is not a trained semantic model and does not calculate a probability that two bugs are duplicates.

## Useful files

- `run-intellibug.ps1` — checks prerequisites, runs tests, then launches the app
- `test-intellibug.ps1` — runs the Maven test suite
- `PRESENTATION-GUIDE.md` — suggested live demo and presentation structure
- `ARCHITECTURE.md` — high-level component overview
- `RELEASE-CHECKLIST.md` — final verification checklist
- `TROUBLESHOOTING.md` — common Windows/Maven/JavaFX/MongoDB issues

## Important

This is a source project launched through Maven, not a standalone installer. The target computer needs Java 21, Maven, and access to MongoDB. The Phase 10 package adds release documentation and helper scripts; it does not claim that the application has been independently compiled or runtime-tested on every target machine.
