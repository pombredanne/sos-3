#! /bin/bash
echo NOMYPY=$NOMYPY

if [ "x$NOMYPY" == "x" ]
then
	python setup.py clean build test --mypy
else
	python setup.py clean build test
fi
coverage run --branch --debug=sys --source=sos sos/tests.py --verbose && coverage html && coverage annotate sos/tests.py
