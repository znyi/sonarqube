#!/usr/bin/env bash
set -euo pipefail

REPO="cnescatlab/sonar-cnes-report"
VERSION="5.0.4"
JAR_NAME="sonar-cnes-report-${VERSION}.jar"
DEST_DIR="$(cd "$(dirname "$0")" && pwd)"

echo "Downloading ${JAR_NAME} ..."
curl -fSL -o "${DEST_DIR}/${JAR_NAME}" \
  "https://github.com/${REPO}/releases/download/${VERSION}/${JAR_NAME}"
echo "Saved to ${DEST_DIR}/${JAR_NAME}"