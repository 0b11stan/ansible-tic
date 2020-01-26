CMD=ansible-playbook -i inventory.ini

first_apply:        ## Play the recipe for the first time
	$(CMD) tic.yml -k

check:       ## Play the recipe without modifiations
	$(CMD) tic.yml --check --diff

apply:       ## Play the recipe with modifications
	$(CMD) tic.yml

backup:	     ## Backup nextcloud datas
	$(CMD) backup.yml

help:
	@sed -n 's/\(^[a-z]*:\)[ a-z\.]*##\(.*\)/\1 \2/p' $(MAKEFILE_LIST)
