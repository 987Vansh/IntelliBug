# IntelliBug — Phase 6: Intelligence Dashboard

This phase builds on the supplied Phase 5 Graph Fix project.

## What's new
- Live KPI cards: total bugs, Critical/Blocker, Open/In Progress, Resolved/Closed.
- Status, severity, and priority distribution pie charts.
- Bugs-by-module bar chart.
- Priority watchlist (top 8 by current priority score).
- Portfolio insight showing P0/P1 count and unassigned bugs.
- Refresh runs MongoDB reads in a background JavaFX Task so the UI remains responsive.
- Existing Phase 1–5 features and MongoDB collections are retained.

## Requirements
- Java 21
- Maven
- MongoDB Community Server running locally
- VS Code (or another Java IDE)

## Run on Windows
1. Extract this ZIP to `C:\Projects\IntelliBug-Phase6`.
2. Open that extracted folder in VS Code (the folder containing `pom.xml`).
3. Ensure MongoDB is running.
4. In the VS Code terminal run:

   ```powershell
   mvn clean test
   mvn javafx:run
   ```

5. Open the **Intelligence Analytics** tab.
6. Use **Refresh Dashboard** on Overview to reload the KPI cards and analytics.

## Notes
- Charts are computed from the current documents in the existing `intellibug.bugs` collection.
- The dashboard does not create sample bugs. If the database is empty, charts and watchlist will be empty.
- The module chart groups records by the existing `module` field.
- Priority watchlist is sorted by `priorityScore` descending; scores continue to be recalculated by the existing Phase 5 service.
- This ZIP has been checked for archive integrity. Run the Maven commands above on your machine to confirm compilation and runtime against your local Java/Maven/MongoDB setup.
