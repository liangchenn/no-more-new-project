# python virtual env
VENV ?= .venv
PYTHON = ${VENV}/bin/python

.PHONY: help
help:
	@echo "Help Panel"
	@echo "------------------------------"
	@echo "- help:            shows this help."
	@echo "- project:         creates a new project from a cookiecutter template."
	@echo "- install:         install cookiecutter package and create virtual env."
	@echo "- create_venv:     create virtual env."
	@echo "- install-cookie:  install cookiecutter package."

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
