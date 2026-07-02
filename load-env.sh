#!/bin/bash
# Source this script to load env files as exported environment variables.
# Usage: source ./load-env.sh
#
# Must be sourced (not executed) so exports persist in the current shell:
#   source ./load-env.sh && docker compose up -d

set -a
[ -f db.env ] && source db.env
[ -f sonarqube.env ] && source sonarqube.env
set +a
