make:
	vim makefile

venv:
	virtualenv -p python3 venv

deps:
	./venv/bin/pip3 install -r requirements.txt

scan:
	./venv/bin/bandit -r ./app -f csv -o bandit.csv

read:
	libreoffice.calc bandit.csv

test:
	./venv/bin/python -m unittest discover -p *_test.py

shell:
	./venv/bin/ipython
