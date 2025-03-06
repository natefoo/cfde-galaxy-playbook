shared:
	ansible-playbook --diff -i hosts-shared shared.yml

psu:
	ansible-playbook --diff -i hosts-psu galaxy.yml

psu-deps:
	ansible-playbook --diff -i hosts-psu galaxy-deps.yml

psu-pulsar:
	ansible-playbook --diff -i hosts-psu pulsar.yml

lrn:
	ansible-playbook --diff -i hosts-lrn galaxy.yml

lrn-deps:
	ansible-playbook --diff -i hosts-lrn galaxy-deps.yml

lrn-pulsar:
	ansible-playbook --diff -i hosts-lrn pulsar.yml

requirements:
	ansible-galaxy role install -p roles -r requirements.yml
