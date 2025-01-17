#!/bin/bash -

# This script prints the versions of the dependencies and software environment under which the book was built.
# It uses the basic dependency versions given in bookbase and adds database information.

# strict error handling
set -o pipefail  # trace ERR through pipes
set -o errtrace  # trace ERR through 'time command' and other functions
set -o nounset   # set -u : exit the script if you try to use an uninitialized variable
set -o errexit   # set -e : exit the script if any statement returns a non-true return value

hasOutput=false  # Do we have some output and need a separator?

# Get the version of mysql
mysqlVersion="$(mysql --version 2>/dev/null | grep Ver | sed -n 's/.*Ver\s*\([\.0-9a-zA-Z-]*\).*/\1/p')" || true
mysqlVersion="$(sed -e 's/^[[:space:]]*//' -e 's/[[:space:]]*$//' -e 's/[[:space:]][[:space:]][[:space:]]*/ /g' -e 's/\.*$//'<<<"${mysqlVersion}")" || true
if [ -n "$mysqlVersion" ]; then
    echo "mysql: $mysqlVersion"
    hasOutput=true
fi

# Find the Python interpreter.
if [[ $(declare -p MYSQL_USER 2>/dev/null) == declare\ ?x* ]]; then
  if [[ $(declare -p MYSQL_PASSWORD 2>/dev/null) == declare\ ?x* ]]; then
    mysqlServerVersion="$(
    echo "status
    exit
    " | mysql "-u${MYSQL_USER}" "-p${MYSQL_PASSWORD}" 2>/dev/null | grep "Server version:" | sed -n 's/.*version:\s*\([\.0-9a-zA-Z-]*\).*/\1/p')" || true
    mysqlServerVersion="$(sed -e 's/^[[:space:]]*//' -e 's/[[:space:]]*$//' -e 's/[[:space:]][[:space:]][[:space:]]*/ /g' -e 's/\.*$//'<<<"${mysqlServerVersion}")" || true
    if [ -n "$mysqlServerVersion" ]; then
        echo "mysql-server: $mysqlServerVersion"
        hasOutput=true
    fi
  fi
fi

# separator if we have anything
if [ "$hasOutput" = true ]; then
  echo ""
fi

"bookbase/scripts/dependencyVersions.sh"
