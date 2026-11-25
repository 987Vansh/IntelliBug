# IntelliBug — Phase 9: Testing, Optimization & Quality Assurance

This package builds on the supplied IntelliBug Phase 8 project (`IntelliBug-Phase8-Fixed-v2`).

## What's new
- Expanded automated regression tests for the explainable priority engine.
- Boundary and invalid-input checks for priority factor clamping and priority-weight validation.
- Emergency P0 override regression checks for both supported emergency conditions.
- Aging regression check ensuring resolved bugs do not continue accumulating aging score.
- NLP robustness tests for blank/null input, duplicate exclusion, result limits, and unrelated bug descriptions.

## Run quality checks (Windows)
Requirements: Java 21 and Maven 3.9+.

1. Extract this ZIP.
2. Open the `IntelliBug-Phase9` folder (the folder containing `pom.xml`) in VS Code.
3. Run:

   ```powershell
   mvn clean test
   ```

4. To launch the application after tests pass:

   ```powershell
   mvn javafx:run
   ```

## What to verify
- Maven reports `BUILD SUCCESS`.
- Existing dashboard, bug management, dependency graph, analytics, live refresh/escalation and Simulation Lab still open.
- Run a sample Simulation Lab scenario and confirm it does not alter saved bugs.
- Check that the added tests pass along with the existing tests.

## Notes and limitations
- Phase 9 strengthens automated regression coverage; it does not claim formal performance benchmarking or production load testing.
- MongoDB integration still requires a running local MongoDB Community Server for application workflows.
- TF-IDF duplicate matching remains lexical similarity, not semantic duplicate probability.
- The priority engine's aging score depends on the current time; tests avoid asserting an exact age score except for resolved bugs.

## Validation
The source archive was verified and the added Java test files were reviewed for structure. Maven compilation/test execution and JavaFX runtime must be confirmed on the target Windows machine with the commands above.
