#!/usr/bin/env bash

# Recursively add all subdirectories to PATH.
include-dir() {
    local cwd="$1"

    # Add this directory
    export PATH="$cwd":"$PATH"

    # Recursive call all directories
    local dir
    for dir in "$cwd"/*; do
        [[ -d "$dir" ]] && include-dir "$dir"
    done
}

main() {
    local dir

    dir="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd -P)"
    include-dir "$dir"
}

main "$@"
