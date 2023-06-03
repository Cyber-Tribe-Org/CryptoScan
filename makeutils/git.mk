define CHECKOUT_SH
	if [ -z "$(BRANCH)" ]; then
		echo 'Provide desired branch such as "make checkout BRANCH=<branch_name>"'
		exit 1
	fi
	echo "\n--------- Checkout (root project) --------\n"
	git checkout $(BRANCH)
	echo "\n--------- Checkout submodules --------\n"
	git submodule foreach --recursive 'git checkout $(BRANCH)'
endef
export CHECKOUT_SH

init:
	@git submodule update --recursive

git_checkout:
	@sh -c "$$CHECKOUT_SH"

git_status:
	@echo "\n--------- Status (root project) --------\n"
	@git status
	@echo "\n--------- Submodule Statuses --------\n"
	@git submodule status --recursive



