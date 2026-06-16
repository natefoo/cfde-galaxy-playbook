HOSTNAME = $(shell hostname --fqdn)
# Pass extra ansible-playbook flags via ARGS, e.g.: make galaxy ARGS="--check"

sudo:
	sudo -l

bootstrap: sudo
	ansible-playbook -i inventory/cfde.yaml playbook-bootstrap.yaml --limit=$(HOSTNAME) $(ARGS)

stack: sudo
	ansible-playbook -i inventory/cfde.yaml playbook-stack.yaml --limit=$(HOSTNAME) $(ARGS)

galaxy: sudo
	ansible-playbook -i inventory/cfde.yaml playbook-galaxy.yaml --limit=$(HOSTNAME) $(ARGS)

galaxy-config: sudo
	ansible-playbook -i inventory/cfde.yaml playbook-galaxy-config.yaml --limit=$(HOSTNAME) $(ARGS)

pulsar:
	ansible-playbook -i inventory/cfde.yaml playbook-pulsar.yaml $(ARGS)

requirements:
	ansible-galaxy role install -p roles -r requirements.yaml
	ansible-galaxy collection install -p collections -r requirements.yaml
