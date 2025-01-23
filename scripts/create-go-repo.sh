#!/bin/bash

# Check if a directory name is provided
if [ -z "$1" ]; then
  echo "Usage: $0 <directory_name>"
  exit 1
fi

directory_name="$1"

# Check if the directory already exists
if [ -d "$directory_name" ]; then
  echo "Directory '$directory_name' already exists."
  exit 1
fi

# Create the directory
mkdir "$directory_name"
if [ $? -ne 0 ]; then
    echo "Failed to create directory '$directory_name'."
    exit 1
fi

# Change to the new directory
cd "$directory_name" || exit

# Initialize Git repository
git init
if [ $? -ne 0 ]; then
    echo "Failed to initialize Git repository."
    exit 1
fi

# Initialize Go modules
go mod init "$directory_name" # Use the directory name as the module path
if [ $? -ne 0 ]; then
    echo "Failed to initialize Go modules."
    exit 1
fi

# Create standard Go project folders
mkdir cmd pkg internal
mkdir internal/data internal/logic
mkdir examples

# Create a simple main.go in cmd
cat << EOF > cmd/main.go
package main

import "fmt"

func main() {
    fmt.Println("Hello, world from $directory_name!")
}
EOF

# Create a .gitignore file
cat << EOF > .gitignore
# Binaries for programs and plugins
*.exe
*.dll
*.so
*.dylib
*.o
*.a

# Test binary, built with go test -c
*.test

# Packages for distribution
*.zip

# Editor and IDE files
.DS_Store
*.swp
*.swo
*.vim
*.vscode/

# Go modules
vendor/
go.sum

# Coverage files
*.out

# Temporary files
*~
# Logs
*.log
EOF

# Initial commit
git add .
git commit -m "feat: Create project"

echo "Go project '$directory_name' created successfully."
echo "Directory: $(pwd)"