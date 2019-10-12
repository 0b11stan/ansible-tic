CMD=ansible-playbook -i inventory.ini tic.yml
ACTIVATE=source venv/bin/activate

check: prepare validation       ## Play the recipe without modifiations
	$(ACTIVATE) && $(CMD) --check --diff

apply: prepare validation       ## Play the recipe with modifications
	$(ACTIVATE) && $(CMD)

prepare: requirements.txt
	python -m venv venv && \
	$(ACTIVATE) && \
	pip install -r requirements.txt

validation:
ifndef DATABASE_ROOT_PASSWORD
	$(error DATABASE_ROOT_PASSWORD is undefined)
endif
ifndef DATABASE_PASSWORD
	$(error DATABASE_PASSWORD is undefined)
endif

clean:                          ## Clean all venv files
	! stat ./venv/ &> /dev/null || rm -r venv

help:
	@sed -n 's/\(^[a-z]*:\)[ a-z\.]*##\(.*\)/\1 \2/p' $(MAKEFILE_LIST)
