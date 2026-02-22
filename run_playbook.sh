#!/bin/bash +x
ansible-playbook ./playbook.yml -i ./inventory.yml --diff
