setup: 
	python3 -m venv ~/.dockerProject
	source  ~/.dockerProject/bin/activate
	~/.dockerProject/bin/python3 -m pip install --upgrade pip

install:  
	pip install -r requirements.txt

# test:
# 	python -m pytest -vv --cov=myrepolib tests/*.py
# 	python -m pytest --nbval notebook.ipynb
lint:
	pylint --disable=R,C myrepolib cli web

all: install lint testls
