#!/bin/bash

# Find all Chart.yaml files
find . -name "Chart.yaml" | while read -r chart_file; do
    echo "Processing $chart_file"
    # Use sed to append -999 to the version line if it doesn't already end in -999
    # This matches 'version: x.y.z' and turns it into 'version: x.y.z-999'
    sed -i '/^version: / { /-999$/! s/$/-999/ }' "$chart_file"
    sed -i '/\sversion: / { /-999$/! s/$/-999/ }' "$chart_file"
done
