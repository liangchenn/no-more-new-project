# variables
VENV_DIR = .venv
PYTHON = $(VENV_DIR)/bin/python

# Load environment variables from .env file
include .env

# default target
.PHONY: all
all: dvc data


.PHONY: help
help:
	@echo "This is a help panel for {{cookiecutter.project_name}}."
	@echo "------------------------------"
	@echo "- help:         show this help"
	@echo "- setup:        setup the environment"
	@echo "- data:         download the necessary datasets"
	@echo "- clean:        clean the environment"
	@echo "- dvc:          install python virtual env with dvc"
	@echo "- create_venv:  create python virtual environment"
	@echo "- install-dvc:  install dvc"
	@echo "- [command]:    show help of [command]"


.PHONY: setup
setup: dvc
	@echo "preparing the environment"


.PHONY: data
data:
	$(PYTHON) -m dvc pull --remote $(DVC_REMOTE_TARGET)


.PHONY: clean
clean:
	@echo "add command to clean the workspace/environment"


.PHONY: dvc
dvc: create_venv install-dvc

.PHONY: create_venv
create_venv:
	@echo "Creating virtual env at .venv/ ..."
	python -m venv .venv


.PHONY: install-dvc
install-dvc:
	@echo "Installing dvc ..."
	.venv/bin/python -m pip install dvc[ssh]