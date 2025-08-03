#!/bin/bash

if [ -z "$1" ]; then
    echo "Error: No argument provided for project name."
    echo "Usage: $0 <project-name>"
    exit 1
fi
if [[ "$1" == *"-"* ]]; then
    echo "Error: Project name should not contain the '-' character."
    exit 1
fi

echo " *** Generating a new FastAPI project following SOLID principles. ***"
echo " *** Project name: $1 ***"

mkdir $1
touch $1/__init__.py

mkdir tests
touch tests/__init__.py

mkdir $1/api
touch $1/api/__init__.py

mkdir $1/core
touch $1/core/__init__.py
touch $1/core/actions.py
touch $1/core/exceptions.py
touch $1/core/handlers.py
touch $1/core/repositories.py
mkdir $1/core/models
touch $1/core/models/__init__.py
