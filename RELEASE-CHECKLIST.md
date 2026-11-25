# IntelliBug Phase 10 — Release Checklist

## Environment
- [ ] Java JDK 21 installed (`java -version`)
- [ ] Java compiler available (`javac -version`)
- [ ] Maven 3.9+ installed (`mvn -version`)
- [ ] MongoDB service running
- [ ] MongoDB connection verified

## Build and tests
- [ ] Run `mvn clean test`
- [ ] Confirm `BUILD SUCCESS`
- [ ] Review test summary; investigate failures rather than ignoring them
- [ ] Run `mvn javafx:run`

## Application smoke test
- [ ] Dashboard opens
- [ ] Database health check succeeds
- [ ] Bug Management opens
- [ ] Create, edit, search/filter and delete a disposable test bug
- [ ] Comments work
- [ ] Priority score and band display
- [ ] NLP analysis and duplicate suggestions respond
- [ ] Dependency dialog and graph open
- [ ] Developer recommendation view responds
- [ ] Analytics charts and watchlist load
- [ ] Simulation Lab runs a what-if scenario
- [ ] Simulation does not persist changes
- [ ] Dashboard refresh/escalation monitor responds
- [ ] Restart app and verify persisted data remains

## Delivery
- [ ] Remove personal/customer data from demo records
- [ ] Keep MongoDB credentials out of source code and ZIP files
- [ ] Back up the MongoDB `intellibug` database
- [ ] Keep a copy of the tested ZIP
- [ ] Prepare presentation using `PRESENTATION-GUIDE.md`
- [ ] Record known limitations honestly
