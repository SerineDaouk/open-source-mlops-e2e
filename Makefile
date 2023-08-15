PYTHON_INTERPRETER = python3

install:
	$(PYTHON_INTERPRETER) -m pip install -U pip setuptools wheel
	$(PYTHON_INTERPRETER) -m pip install --upgrade pip
	$(PYTHON_INTERPRETER) -m pip install -r requirements.txt

dataSplit:
	$(PYTHON_INTERPRETER) src/stages/data/data_split.py --config config/params.yaml

train:
	$(PYTHON_INTERPRETER) src/stages/train/train.py --config config/params.yaml

eval:
	$(PYTHON_INTERPRETER) src/stages/evaluation/eval.py --config config/params.yaml