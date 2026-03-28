# MuleSoftWorkspace

This folder is an Anypoint Studio workspace that can contain one or more Mule 4 applications (and related projects) built with Maven.

## Workspace Layout

In this workspace, each Mule application is typically a top-level folder that contains:

- `pom.xml` (Maven build)
- `mule-artifact.json` (Mule artifact descriptor)
- `src/main/mule/` (Mule flows and configs)
- `src/main/resources/` (configuration files, logging config, etc.)
- `src/test/` (optional tests, often MUnit)

Example (varies per project):

```text
<app-name>/
  pom.xml
  mule-artifact.json
  src/
    main/
      mule/
      resources/
    test/
      mule/
      resources/
```

## Projects In This Workspace

This workspace may contain more projects than the list below. To discover Mule applications, look for folders containing `mule-artifact.json` and a `pom.xml` with `<packaging>mule-application</packaging>`.

- cachingdemo
- consumerest
- databasedemo
- firstapp
- objectstoredemo

## Build (Maven)

From an application directory:

```bash
mvn clean package
```

The packaged application is written to `target/` (for example: `*-mule-application.jar`).

Common Maven commands:

```bash
mvn clean
mvn test
mvn -DskipTests package
```

## Run (Anypoint Studio)

- Open Anypoint Studio
- Import the project folder(s) into your workspace
- Run the project as a Mule Application

## Configuration

Most Mule apps in this workspace keep environment-specific configuration under `src/main/resources/` (for example `app-<env>.yaml`) and may include secure property files (for example `*-secure.yaml`). Configuration conventions can differ per project.

## Repository Hygiene

This workspace produces IDE/runtime caches (for example `.metadata/`, `.mule/`, `target/`). These are ignored via the workspace-level `.gitignore`.
