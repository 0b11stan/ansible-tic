CMD=ansible-playbook -i inventory.ini tic.yml
ACTIVATE=source venv/bin/activate

check: prepare
	$(ACTIVATE) && $(CMD) --check --diff

apply: prepare
	$(ACTIVATE) && $(CMD)

prepare: requirements.txt
	python -m venv venv && \
	$(ACTIVATE) && \
	pip install -r requirements.txt

clean:
	! stat ./venv/ &> /dev/null || rm -r venv
