# IntelliBug — Phase 7: Live Updates & Automatic Escalation

This package builds on the supplied Phase 6 Intelligence Dashboard ZIP.

## What's new
- Dashboard automatically refreshes every 15 seconds without blocking the JavaFX UI.
- Priority scores are recalculated during each monitoring cycle, including the existing aging factor.
- When an unresolved bug moves to a higher priority band (for example P2 → P1), IntelliBug records an escalation event.
- The Overview tab displays the five most recent escalation events.
- Escalation audit records are stored in MongoDB collection `intellibug.escalation_events`.
- Existing priority history, dependency graph, NLP, bug management, and Phase 6 analytics remain included.

## Escalation behavior
Priority bands are ordered P0 (highest), P1, P2, P3, P4 (lowest). An escalation event is recorded only when a recalculation moves an unresolved bug to a higher band. Resolved and Closed bugs are not escalated. This phase does not automatically change severity or status; it records and surfaces priority-band increases.

The current priority engine includes an aging factor. Because aging contributes 10% of the score and is capped by the existing engine's 30-day aging calculation, a bug will escalate only if its recalculated score crosses a priority threshold. The 15-second polling interval is for freshness, not a promise that a bug escalates every 15 seconds.

## Requirements
- Java 21
- Maven 3.9+
- MongoDB Community Server running locally (default `mongodb://127.0.0.1:27017`)

## Run on Windows
1. Extract the ZIP to `C:\Projects\IntelliBug-Phase7`.
2. Open the extracted folder (the one containing `pom.xml`) in VS Code.
3. Ensure MongoDB is running.
4. Run:

   ```powershell
   mvn clean test
   mvn javafx:run
   ```

5. Open the Overview tab. The dashboard refreshes automatically every 15 seconds. You can also use Refresh Dashboard for an immediate refresh.
6. Review the Automatic Escalation Monitor section for recent priority-band changes.

## MongoDB collections
- Existing: `bugs`, `priority_history`, `bug_dependencies`
- New: `escalation_events`

Existing bug documents are retained. The new collection is created automatically by MongoDB when the first escalation event is inserted. No sample data is added.

## Validation note
The ZIP archive was checked for integrity. Run `mvn clean test` on your Windows machine to verify compilation and tests in your Java/Maven environment.
