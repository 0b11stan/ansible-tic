INVENTORY=production

CMD=ansible-playbook -i $(INVENTORY).ini

ssh:        ## Play the recipe for the first time
	$(CMD) tic.yml -k -t ssh

check:       ## Play the recipe without modifiations
	$(CMD) tic.yml -k --check --diff -t common

apply:       ## Play the recipe with modifications
	$(CMD) tic.yml -k -t common

backup:	     ## Backup nextcloud datas
	$(CMD) backup.yml

help:
	@sed -n 's/\(^[a-z]*:\)[ a-z\.]*##\(.*\)/\1 \2/p' $(MAKEFILE_LIST)
