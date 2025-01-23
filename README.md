# Quick Project Scaffolding Scripts

This repository contains two bash scripts designed to quickly scaffold new Go and TypeScript React projects, handling project setup, Git initialization, and basic directory structure creation.

## Scripts

*   `create_go_project.sh`: Creates a new Go project.
*   `create_react_ts_project.sh`: Creates a new TypeScript React project using Vite.

## Features

*   **Simplified project setup:** Automates the creation of necessary directories, Git repository initialization, and project initialization (Go modules or npm).
*   **Standard directory structure:** Creates a standard project layout following best practices for Go (with `cmd`, `pkg`, `internal`, `examples` folders) and a basic React project structure using Vite.
*   **Git initialization:** Automatically initializes a Git repository and performs an initial commit.
*   **`.gitignore` file:** Includes a comprehensive `.gitignore` file to exclude common files and directories.
*   **Full path support:** Allows creating projects in any location using the `--full-path` option.

## Usage

### Go Projects

```bash
./create_go_project.sh [--full-path=<path>] <repo_name>
