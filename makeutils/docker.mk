
check_env:
	@if [ ! -f "cryptoscanenvs/.env.dev" ] || [ ! -f "analyzer_service/app/__init__.py" ] || [ ! -f "data_service/app/__init__.py" ]; then\
		echo "Environment variables were not fetched as a submodule!";\
		exit 1;\
	fi

docker_start_dev: check_env
	@SECRET_ENVS=cryptoscanenvs/.env.dev docker-compose up --build

docker_start_prd: check_env
	@SECRET_ENVS=cryptoscanenvs/.env.prd docker-compose up --build

docker_stop:
	@docker container stop $(docker container ls -q --filter name=cryptoscan*)
