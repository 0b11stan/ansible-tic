CMD=ansible-playbook -i inventory.ini tic.yml
ACTIVATE=source ./venv/bin/activate -e "db_root_password=$(DATABASE_ROOT_PASSWORD)" -e "db_password=$(DATABASE_PASSWORD)"

check: validation       ## Play the recipe without modifiations
	$(CMD) --check --diff

apply: validation       ## Play the recipe with modifications
	$(CMD)

validation: inventory.ini tic.yml
ifndef DATABASE_ROOT_PASSWORD
	$(error DATABASE_ROOT_PASSWORD is undefined)
endif
ifndef DATABASE_PASSWORD
	$(error DATABASE_PASSWORD is undefined)
endif

help:
	@sed -n 's/\(^[a-z]*:\)[ a-z\.]*##\(.*\)/\1 \2/p' $(MAKEFILE_LIST)
