#!/bin/bash
set -e

# This sets the env as production and attempts to create the database. If it's already created, this completes without error.
RAILS_ENV=production rake db:create
# This sets the env to production and attempts to run any pending migraitons. If none or they complete, then it moves on to the next
RAILS_ENV=production rake db:migrate

# Removes a potentially pre-existing server.pid for Rails.
rm -f /app/tmp/pids/server.pid

# Then exec the container's main process (what's set as CMD in the Dockerfile).
exec "$@"