# Git Commands

## Initialize a new Git repository
```git init```

## Clone an existing repository
```git clone <repository_url>```

## Add files to the staging area
```git add .```        # Adds all changes in the current directory
```git add <file>```   # Adds a specific file

## Commit changes
```git commit -m "Your commit message"```

## Push changes to a remote repository
```git push origin <branch_name>```  # Typically 'main' or 'master'

## Create a new branch
```git checkout -b <new_branch_name>```

## Switch to an existing branch
```git checkout <branch_name>```

## Merge a branch into the current branch
```git merge <branch_name>```


# TypeScript with Vite Commands

## Create a new Vite project with TypeScript (using npm)
```npm create vite@latest my-ts-app --template typescript```

## Create a new Vite project with TypeScript (using yarn)
```yarn create vite my-ts-app --template typescript```

## Create a new Vite project with TypeScript (using pnpm)
```pnpm create vite my-ts-app --template typescript```

## Navigate to the project directory
```cd my-ts-app```

## Install dependencies (using npm)
```npm install```

## Install dependencies (using yarn)
```yarn```

## Install dependencies (using pnpm)
```pnpm install```

## Start the development server (using npm)
```npm run dev```

## Start the development server (using yarn)
```yarn dev```

## Start the development server (using pnpm)
```pnpm dev```

## Build for production (using npm)
```npm run build```

## Build for production (using yarn)
```yarn build```

## Build for production (using pnpm)
```pnpm build```


# Python Virtual Environment Commands

## Create a virtual environment (using venv - recommended for Python 3)
```python3 -m venv .venv```

## Create a virtual environment (using virtualenv - for older Python versions)
 ```virtualenv .venv```  # If you have virtualenv installed

## Activate the virtual environment (Linux/macOS)
```source .venv/bin/activate```

## Activate the virtual environment (Windows)
```.venv\Scripts\activate```

## Deactivate the virtual environment
```deactivate```

## Install packages
```pip install <package_name>```

## Freeze requirements (create a requirements.txt file)
```pip freeze > requirements.txt```

## Install from requirements file
```pip install -r requirements.txt```


# Go (Golang) Commands

## Initialize a new Go module
```go mod init <module_path>``` # Example: go mod init github.com/yourusername/yourproject

## Download dependencies
```go mod tidy```

## Run a Go program
```go run main.go``` # Or ```go run .``` to run all go files in the current directory

## Build a Go program (creates an executable)
```go build```

## Install a Go package
```go install <package_path>``` # Example: go install golang.org/x/tools/cmd/goimports

## Get a specific version of a module
```go get <module_path>@<version>``` # Example: go get github.com/gin-gonic/gin@v1.9.0

## Update dependencies to latest compatible versions
```go get -u ./...```

## Run tests
```go test ./...```

## Format code
```go fmt ./...```

## Check for code issues
```go vet ./...```


# Example Aliases (add these to your ~/.bashrc, ~/.zshrc, etc.)

## Example alias for creating a python venv
```alias venv='python3 -m venv'```

## Example alias for activating a venv (Linux/macOS)
```alias activate='. .venv/bin/activate'```

## Example alias for deactivating a venv
```alias deactivate='deactivate'```