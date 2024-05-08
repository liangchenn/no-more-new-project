# python virtual env
VENV ?= .venv
PYTHON = ${VENV}/bin/python

.PHONY: help
help:
	@echo "help: Shows this help."
	@echo "project: Creates a new project from a cookiecutter template."
	@echo "install: Install cookiecutter package and create virtual env."
	@echo "create_venv: Create virtual env."
	@echo "install-cookie: Install cookiecutter package."


.PHONY: project
project:
	@$(PYTHON) -m cookiecutter --version 2>/dev/null || (echo "Cookiecutter package is not installed.\nPlease run 'make install' first." && exit 1)
	@$(PYTHON) -m cookiecutter .


.PHONY: install
install: create_venv install-cookie


.PHONY: creat_venv
create_venv:
	@echo "Creating virtual env at .venv/ ..."
	python -m venv .venv


.PHONY: install-cookie
install-cookie:
	@echo "Installing cookiecutter ..."
	$(PYTHON) -m pip install cookiecutter
