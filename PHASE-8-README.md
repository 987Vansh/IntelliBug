# IntelliBug — Phase 8: Simulation Lab & Risk Radar

This package builds on the supplied Phase 7 ZIP.

## What's new
- A Simulation Lab tab with editable severity, user impact, reproducibility, business impact, security impact and unresolved age.
- A what-if priority calculation using the existing explainable PriorityEngine and its existing weighting/classification rules.
- A Risk Radar bar chart showing the six factor values used by the priority engine.
- An explanation of the simulated score and priority band.
- Simulation is in-memory only: it does not create or update bug records, priority history, or escalation events in MongoDB.

## How to run (Windows)
Requirements: Java 21, Maven 3.9+, and MongoDB Community Server running locally.

1. Extract to `C:\\Projects\\IntelliBug-Phase8`.
2. Open the folder containing `pom.xml` in VS Code.
3. In the terminal run:

   ```powershell
   mvn clean test
   mvn javafx:run
   ```

4. Open the **Simulation Lab** tab.
5. Adjust the sliders and severity, then select **Run Simulation**.
6. Observe the score, priority band, factor chart and explanation.

## Notes
- The simulator uses the same priority weights and P0–P4 thresholds as the application's current engine.
- Aging is simulated as 0–30 unresolved days, following the current engine's aging formula.
- This is a what-if tool, not a prediction of future production incidents. It does not alter live bugs.

## Validation
The source ZIP's integrity was checked before modification. The resulting archive and FXML XML files are checked for structural integrity. Maven compilation and JavaFX runtime should be verified on the target Windows machine with the commands above.
