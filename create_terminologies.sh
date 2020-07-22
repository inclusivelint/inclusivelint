#!/usr/bin/env bash

declare -A TERMINOLOGIES

TERMINOLOGIES["black\s?list"]="The term 'blacklist' was detected on the %s file. Prefer the term 'blocklist' instead."
TERMINOLOGIES["white\s?list"]="The term 'whitelist' was detected on the %s file. Prefer the term 'allowlist' instead."
