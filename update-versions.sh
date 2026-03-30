#!/bin/bash

# Find all Chart.yaml files recursively and append .999 to the version field.
# Only matches 'version:' at the beginning of the line to avoid modifying dependency versions.

find . -name "Chart.yaml" -type f -exec sed -i '/^version:.*\.999$/! s/^version: \(.*\)/version: \1.999/' {} +

echo "Updated versions in all Chart.yaml files."
