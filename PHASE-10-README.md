# IntelliBug — Phase 10: Final Integration, Packaging & Project Presentation

## Goal

Prepare the Phase 9 project for a final academic or product demonstration without removing its existing features.

## Added in Phase 10

1. Windows PowerShell launch helper that checks Java and Maven, runs regression tests, and starts JavaFX.
2. Separate test helper for quick regression checks.
3. Final setup and MongoDB configuration documentation.
4. Architecture overview, presentation guide, troubleshooting guide and release checklist.
5. Clear release notes and known limitations.

## Run

From the extracted `IntelliBug-Phase10` folder:

```powershell
.	est-intellibug.ps1
```

Then:

```powershell
.un-intellibug.ps1
```

Manual alternative:

```powershell
mvn clean test
mvn javafx:run
```

## Acceptance checks

- Java 21 and Maven are available.
- MongoDB is running and reachable.
- `mvn clean test` completes with `BUILD SUCCESS`.
- JavaFX dashboard opens.
- Bug Management operations can be performed.
- Analytics and Simulation Lab tabs load.
- Dependency insights/graph can be opened.
- A simulation changes only the simulated result, not persisted bug records.
- Dashboard refresh and escalation monitor can be observed.
- A restart preserves bugs and dependencies stored in MongoDB.

## Validation boundary

The archive is structurally packaged and the helper scripts/docs are included. Maven compilation, JUnit execution, MongoDB connectivity and JavaFX runtime must be confirmed on the user's Windows machine. No claim of a successful local runtime test is made here.
