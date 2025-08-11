#!/usr/bin/env bash

# Follow a mv/cp/cd.
#
# This method doesn't check whether the previous command was a mv/cp/cd,
# but rather just jumps to the directory of the last argument.
#
# Author: heavycircle
# Date: August 11, 2025
# License: MIT

_follow() {
    local ref="$1"
    if [[ -d "$ref" ]]; then
        cd "$ref" || return $?
    elif [[ -f "$ref" ]]; then
        cd $(dirname "$ref") || return $? # TODO - Stop forking
    else
        echo "follow: no such file or directory: $1"
    fi
}

alias follow='_follow $_'
