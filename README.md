# cfde-galaxy-playbook

Ansible playbook for CFDE CWIC Galaxy

# Usage

Install Ansible and dependencies:

```console
$ python3 -m venv ansible
$ . ./ansible/bin/activate
$ make requirements
```

There are `make` targets for all the common operations:

| Target | Purpose |
| --- | --- |
| `requirements` | Install required Ansible roles and collections. |
| `bootstrap` | Run `playbook-bootstrap.yaml` playbook for basic system configuration. |
| `stack` | Run `playbook-stack.yaml` playbook to install and configure Galaxy stack (PostgreSQL, NGINX, etc.). |
