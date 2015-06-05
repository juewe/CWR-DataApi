#!/bin/bash
# This script runs the normal tests

if [ -z "$DOCS" ] && [ -z "$COVERAGE" ] && [ -z "$JYTHON" ]; then

   tox -e $(echo py$TRAVIS_PYTHON_VERSION | tr -d . | sed -e 's/pypypy/pypy/')

fi
