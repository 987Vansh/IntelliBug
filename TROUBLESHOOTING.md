# IntelliBug — Windows Troubleshooting

## `mvn` is not recognized

Install Maven 3.9+ and add its `bin` directory to PATH. Close and reopen VS Code, then run:

```powershell
mvn -version
```

## Wrong Java version

IntelliBug targets Java 21. Check:

```powershell
java -version
javac -version
```

If multiple JDKs are installed, configure `JAVA_HOME` to the JDK 21 installation and ensure `%JAVA_HOME%\bin` is on PATH.

## `BUILD FAILURE` during compilation

Read the first `[ERROR]` lines, not only the final Maven summary. The first compiler error usually identifies the source file and line that needs attention. Run `mvn clean test` after any source fix.

## JavaFX `FXMLLoadException`

Read the first `Caused by:` line and the FXML file/line number. Check that:
- `fx:controller` names an existing controller class.
- `fx:id` values match controller fields.
- `onAction` handler names exist and have supported signatures.
- FXML tags and imports are valid.

## MongoDB connection error

- Start the MongoDB Community Server service.
- Confirm the server is listening on the configured host/port.
- Default URI: `mongodb://127.0.0.1:27017`.
- To override it for the current PowerShell session:

```powershell
$env:INTELLIBUG_MONGO_URI = "mongodb://127.0.0.1:27017"
```

Then launch again with `mvn javafx:run`.

## App starts but lists no bugs

Confirm the app is connected to the intended MongoDB server and database (`intellibug`). A different URI may point to a different database instance.

## Capture a useful error log

```powershell
mvn javafx:run *> intellibug-startup.log
```

Share the first exception and its `Caused by:` section. Remove credentials or private data before sharing logs.
