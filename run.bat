echo NOMYPY=%NOMYPY%
if "%NOMYPY%" == "" (
	python setup.py clean build test --mypy
) else (
	python setup.py clean build test
)
coverage run --branch --debug=sys --source=sos sos/tests.py && coverage html && coverage annotate sos/tests.py