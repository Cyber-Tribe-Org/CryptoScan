
check_env:
	@if [ ! -f "/cryptoscanenvs/.env.dev" ]; then\
		echo "Environment variables were not fetched as a submodule!";\
		exit 1;\
	fi

docker_start_dev: check_env
	@docker-compose --env-file ./cryptoscanenvs/.env.dev up --build

docker_start_prd: check_env
	@docker-compose --env-file ./cryptoscanenvs/.env.prd up --build

docker_stop:
	@docker container stop $(docker container ls -q --filter name=cryptoscan*)
