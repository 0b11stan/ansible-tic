CMD=ansible-playbook -i inventory.ini tic.yml

check:       ## Play the recipe without modifiations
	$(CMD) --check --diff

apply:       ## Play the recipe with modifications
	$(CMD)

help:
	@sed -n 's/\(^[a-z]*:\)[ a-z\.]*##\(.*\)/\1 \2/p' $(MAKEFILE_LIST)
