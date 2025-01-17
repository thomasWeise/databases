#!/bin/bash -

# This script prints the versions of the dependencies and software environment under which the book was built.
# It uses the basic dependency versions given in bookbase and adds database information.

# strict error handling
set -o pipefail  # trace ERR through pipes
set -o errtrace  # trace ERR through 'time command' and other functions
set -o nounset   # set -u : exit the script if you try to use an uninitialized variable
set -o errexit   # set -e : exit the script if any statement returns a non-true return value

hasOutput=false  # Do we have some output and need a separator?

# Get the version of postgresql
postgresVersion="$(psql --version 2>/dev/null | grep Postgre | sed -n 's/\psql (PostgreSQL) \([.0-9]*\)/\1/p')" || true
postgresVersion="$(sed -e 's/^[[:space:]]*//' -e 's/[[:space:]]*$//' -e 's/[[:space:]][[:space:]][[:space:]]*/ /g' -e 's/\.*$//'<<<"${postgresVersion}")" || true
if [ -n "$postgresVersion" ]; then
    echo "postgres-client: $postgresVersion"
    hasOutput=true
fi

# Find the Python interpreter.
if [[ $(declare -p POSTGRES_USER 2>/dev/null) == declare\ ?x* ]]; then
  if [[ $(declare -p POSTGRES_PASSWORD 2>/dev/null) == declare\ ?x* ]]; then
    if [[ $(declare -p POSTGRES_HOST 2>/dev/null) == declare\ ?x* ]]; then
      if [[ $(declare -p POSTGRES_PORT 2>/dev/null) == declare\ ?x* ]]; then
        postgresServerVersion="$(psql "postgres://${POSTGRES_USER}:${POSTGRES_PASSWORD}@${POSTGRES_HOST}:${POSTGRES_PORT}" -c "show server_version;" 2>/dev/null | grep "Ubuntu")" || true
        postgresServerVersion="$(sed -e 's/^[[:space:]]*//' -e 's/[[:space:]]*$//' -e 's/[[:space:]][[:space:]][[:space:]]*/ /g' -e 's/\.*$//'<<<"${postgresServerVersion}")" || true
        if [ -n "$postgresServerVersion" ]; then
            echo "postgres-server: $postgresServerVersion"
            hasOutput=true
        fi
      fi
    fi
  fi
fi

# separator if we have anything
if [ "$hasOutput" = true ]; then
  echo ""
fi

"bookbase/scripts/dependencyVersions.sh"
