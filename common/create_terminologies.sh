#!/usr/bin/env bash

declare -A TERMINOLOGIES

TERMINOLOGIES["black\s?list"]="The term 'blacklist' was detected, prefer the term 'blocklist' instead."
TERMINOLOGIES["white\s?list"]="The term 'whitelist' was detected, prefer the term 'allowlist' instead."
