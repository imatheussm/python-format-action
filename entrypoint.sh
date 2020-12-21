#!/bin/sh -e

find . -name "*.py" | xargs reorder-python-imports --diff-only
black --line-length $1 --check $2