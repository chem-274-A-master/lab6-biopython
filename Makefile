
.PHONY: environment remove-env # .PHONY is something we can add when our target dependencies are not files.

ENVIRONMENT=chem274A_lab6

environment: remove-env
	conda env create -f environment.yml

remove-env:
	conda remove --name $(ENVIRONMENT) --all --yes