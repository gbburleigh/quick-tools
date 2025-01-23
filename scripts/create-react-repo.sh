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

# Initialize npm
npm init -y
if [ $? -ne 0 ]; then
    echo "Failed to initialize npm."
    exit 1
fi

# Create the Vite project with React and TypeScript template
npm create vite@latest . -- --template react-ts
if [ $? -ne 0 ]; then
    echo "Failed to create Vite project."
    exit 1
fi

# Create a .gitignore file (more comprehensive for Node projects)
cat << EOF > .gitignore
node_modules/
dist/
.DS_Store
*.log
.env
.env.local
.env.development.local
.env.test.local
.env.production.local
npm-debug.log*
yarn-debug.log*
yarn-error.log*
.pnp*
.yarn/*
!.yarn/patches
!.yarn/plugins
!.yarn/releases
!.yarn/sdks
!.yarn/versions
EOF

# Initial commit
git add .
git commit -m "Initial commit"

echo "TypeScript React project '$directory_name' created successfully."
echo "Directory: $(pwd)"
echo "Next steps:"
echo "  cd $directory_name"
echo "  npm install"
echo "  npm run dev"