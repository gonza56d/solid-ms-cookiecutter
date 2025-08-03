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
touch $1/containers.py
touch $1/events.py

mkdir tests
touch tests/__init__.py

mkdir env
touch env/.$1.env
touch Makefile

touch .flake8
touch Dockerfile
touch README.md
touch entrypoint.sh
touch requirements.txt

mkdir $1/core
touch $1/core/__init__.py
touch $1/core/actions.py
touch $1/core/exceptions.py
touch $1/core/handlers.py
touch $1/core/repositories.py
mkdir $1/core/models
touch $1/core/models/__init__.py

mkdir $1/api
touch $1/api/__init__.py
touch $1/api/exceptions.py
touch $1/api/middlewares.py
touch $1/api/providers.py
touch $1/api/routers.py
touch $1/api/run.py
touch $1/api/views.py
mkdir $1/api/docs
touch $1/api/docs/v2.yml

mkdir $1/odm
touch $1/odm/__init__.py
touch $1/odm/base.py
touch $1/odm/schemas.py

mkdir $1/orm
touch $1/orm/__init__.py
touch $1/orm/alembic.ini
touch $1/orm/filters.py
touch $1/orm/mappings.py
touch $1/orm/repositories.py

mkdir $1/rest_client
touch $1/rest_client/__init__.py
