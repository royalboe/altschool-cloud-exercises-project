# Ansible Playbook to setup a server
## Description
This folder contains ansible playbook to configure a server

## How to use
- To use this please run ansible-playbook -i `inventories/dev/hosts.yaml main.yml`
- The main.yml is a playbook with roles for different tasks
- The [groups_var/all](./groups_var/all) contains variables that are used in the playbooks
- The [roles](./roles) contains different plays for the playbook
- The [hosts](./inventories/dev/hosts.yaml) contains ip address
## Domain name
- My domain name is `[https://royalboe.live](https://royalboe.live)`  
