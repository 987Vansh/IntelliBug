# IntelliBug — High-level Architecture

## Technology stack

- Java 21
- JavaFX 21 (FXML-based desktop UI)
- Maven build and dependency management
- MongoDB Java Sync Driver
- MongoDB database: `intellibug`
- JUnit Jupiter regression tests

## Main application flow

1. `MainApp` starts the JavaFX application.
2. `MongoConfig` creates a MongoDB client using `INTELLIBUG_MONGO_URI` or the local default.
3. `BugRepository` and `BugService` provide bug persistence and application operations.
4. FXML files under `src/main/resources/fxml` define the dashboard, bug-management view and Simulation Lab.
5. Controllers coordinate UI actions and services.
6. The priority engine calculates explainable scores and priority bands.
7. NLP classes analyze text and calculate TF-IDF similarity for duplicate suggestions.
8. Phase 5 dependency classes manage blocker relationships and developer recommendations.
9. Dashboard analytics, refresh/escalation monitoring and the Simulation Lab present insights.

## Important source areas

| Area | Package/path |
|---|---|
| Application entry point | `com.intellibug.MainApp` |
| MongoDB configuration | `com.intellibug.config` |
| Persistence and services | `com.intellibug.repository`, `com.intellibug.service` |
| Priority engine | `com.intellibug.engine` |
| NLP and duplicate similarity | `com.intellibug.nlp` |
| Dependency graph/recommendation | `com.intellibug.phase5` |
| JavaFX controllers | `com.intellibug.controller` |
| UI layouts | `src/main/resources/fxml` |
| Styles | `src/main/resources/css` |
| Automated tests | `src/test/java` |

## Data and safety notes

- The application uses MongoDB database `intellibug`.
- The default MongoDB URI is local. Override it with `INTELLIBUG_MONGO_URI`.
- Simulation is intended as a what-if calculation and should not be treated as a persisted production bug.
- TF-IDF similarity is lexical matching; validate duplicate suggestions manually.
- Back up the `intellibug` database before any manual database maintenance.
