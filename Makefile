HOSTNAME = $(shell hostname --fqdn)

sudo:
	sudo -l

bootstrap: sudo
	ansible-playbook -i inventory/cfde.yaml playbook-bootstrap.yaml --limit=$(HOSTNAME)

stack: sudo
	ansible-playbook -i inventory/cfde.yaml playbook-stack.yaml --limit=$(HOSTNAME)

requirements:
	ansible-galaxy role install -p roles -r requirements.yaml
	ansible-galaxy collection install -p collections -r requirements.yaml
