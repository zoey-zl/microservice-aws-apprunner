install:
	pip install --upgrade pip &&\
		pip install -r requirements.txt

format:
	black *.py

lint:
	pylint --disable=R,C hellow.py


test:
	python -m pytest -vv --cov=hellow test_hellow.py

all: install lint test