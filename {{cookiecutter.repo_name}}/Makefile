.PHONY: help
help:
	@echo "This is a help panel for {{cookiecutter.project_name}}."
	@echo "------------------------------"
	@echo "help:         show this help"
	@echo "setup:        setup the environment"
	@echo "data:         download the necessary datasets"
	@echo "clean:        clean the environment"
	@echo "dvc:          install python virtual env with dvc"
	@echo "create_venv:  create python virtual environment"
	@echo "install-dvc:  install dvc"
	@echo "[command]:    show help of [command]"


.PHONY: setup
setup:
	@echo "add command to setup the environment"


.PHONY: data
data:
	$(PYTHON) -m dvc pull


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