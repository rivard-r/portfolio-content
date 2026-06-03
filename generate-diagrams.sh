#!/usr/bin/env bash

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
PROJECTS_DIR="${1:-"${SCRIPT_DIR}/projects"}"
DIAGRAMS_DIR=${PROJECTS_DIR}"/diagrams"
PROCESSED_MARKDOWN_DIR=${PROJECTS_DIR}"/processed-markdown"

echo "DIAGRAMS_DIR: ${DIAGRAMS_DIR}"
echo "PROCESSED_MARKDOWN_DIR: ${PROCESSED_MARKDOWN_DIR}"

rm ${DIAGRAMS_DIR}/* 
rm ${PROCESSED_MARKDOWN_DIR}/*

for file in ${PROJECTS_DIR}/*.md
do
  FILE_PATH_EXTENSION_TRIMMED=${file%.md}
  FILE_NAME=${FILE_PATH_EXTENSION_TRIMMED##${PROJECTS_DIR}/}
  echo "File name: ${FILE_NAME}" 
  if [[ ${FILE_NAME} != i_* ]]; then
    mmdc -i "${file}" -o "${PROCESSED_MARKDOWN_DIR}/${FILE_NAME##*\/}_p.md" \
    -a "${DIAGRAMS_DIR}"
  fi
done

for file in ${PROCESSED_MARKDOWN_DIR}/*.md
do
  sed -i 's/\.\/\.\.\/diagrams/\/diagrams/g' ${file}
done
