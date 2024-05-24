#!/bin/sh

# Set environment variables
export PGADMIN_DEFAULT_EMAIL=${PGADMIN_DEFAULT_EMAIL:-"admin@example.com"}
export PGADMIN_DEFAULT_PASSWORD=${PGADMIN_DEFAULT_PASSWORD:-"admin"}

# Execute the pgAdmin startup script
exec /venv/bin/python3 /pgadmin4/pgAdmin4.py
