define CHECKOUT_SH
	if [ -z "$(BRANCH)" ]; then
		echo 'Provide desired branch such as "make checkout BRANCH=<branch_name>"'
		exit 1
	fi
	git submodule foreach --recursive 'git checkout $(BRANCH)'
endef
export CHECKOUT_SH

init:
	git submodule update --recursive

git_checkout:
	@echo "This functionality needs to be implemented"
	exit 1
	@sh -c "$$CHECKOUT_SH"

git_status:
	@echo "--------- Status (root project) --------"
	git status
	@echo "--------- Submodule Statuses --------"
	git submodule status --recursive



