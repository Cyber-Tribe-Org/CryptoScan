PROJECT := crypto_scan

#----------------------- Imports ---------------------------
include makeutils/git.mk
include makeutils/docker.mk
#----------------------- Usage -----------------------------

help:
	@echo "Defined targets:"
	@echo "----------------"
	@echo "help         Description of the available 'make' commands"
	@echo "init         Description of the available 'make' commands"
	@echo "clear        Stop and remove containers &clear the volumes"
	@echo "run_dev      Run services in development mode"

#-----------------------------------------------------------------------------




