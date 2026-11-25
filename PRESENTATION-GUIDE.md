# IntelliBug — Final Presentation Guide

Suggested 8–10 minute demonstration.

## 1. Problem and objective (1 minute)

Explain the challenge: bug queues can become difficult to prioritize when teams rely on severity alone. IntelliBug combines multiple factors and provides supporting explanations.

## 2. Demonstrate bug management (2 minutes)

- Open Bug Management.
- Show the bug list, search and filters.
- Create a small demonstration bug with a clear title, description, severity and module.
- Open it, edit a field, add a comment, and show the updated record.
- Explain that records are stored in MongoDB.

Use clearly labelled demo data. Avoid using confidential or real customer information.

## 3. Explainable priority engine (1 minute)

Explain the six factors:
- Severity
- User impact
- Reproducibility
- Business impact
- Security impact
- Aging

Show how the weighted score maps to P0–P4. Emphasize that the score supports triage; the team remains responsible for final decisions.

## 4. NLP and duplicate suggestions (1 minute)

Show text analysis, extracted keywords/category suggestion and similar bug matches. Explain that TF-IDF measures lexical similarity and is not a semantic AI model or a duplicate probability.

## 5. Dependencies and developer recommendations (1 minute)

Show a blocker relationship and the dependency graph. Explain how upstream blockers can delay downstream work. Show the developer recommendation as decision support, not an automatic assignment guarantee.

## 6. Intelligence dashboard (1 minute)

Show KPI cards, status/severity/priority charts, module counts and the priority watchlist. Explain that analytics reflect the current stored bug records.

## 7. Simulation Lab and Risk Radar (1 minute)

Change one or more factors, run a what-if simulation, and compare the score/priority. Explain that simulation is temporary and should not alter saved bug records.

## 8. Live monitoring and quality assurance (1 minute)

Show dashboard refresh/escalation monitor. Briefly show the successful `mvn clean test` result and explain the regression tests.

## 9. Close (30 seconds)

Summarize the value: centralized bug tracking, explainable prioritization, dependency awareness, analytics and safer what-if analysis.

## Presentation tips

- Start MongoDB before launching IntelliBug.
- Prepare 4–5 non-sensitive demo bugs and a small dependency chain in advance.
- Confirm all tabs open before the presentation.
- Keep a backup copy of the project and database.
- If internet access is unreliable, use a local MongoDB instance.
