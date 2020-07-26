#!/usr/bin/env bash

source ./inclusivelint_tests.sh

declare -A failed=false

linter_should_find_contraventions
linter_should_not_find_contraventions

if $failed ; then
    exit 1
fi
