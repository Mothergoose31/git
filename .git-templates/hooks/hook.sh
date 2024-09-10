#!/bin/sh

branch="$(git rev-parse --abbrev-ref HEAD)"
protected_branches="^(master|main)$"

if echo "$branch" | grep -Eiq "$protected_branches"; then
    echo "ERROR: Direct commits to $branch are not allowed."
    echo "Please create a feature branch and submit a pull request."
    echo "To bypass this hook, use: git commit --no-verify"
    exit 1
fi