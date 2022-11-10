# Ansible Playbook to setup a server
## Description
This folder contains ansible playbook to configure a server

## How to use
- To use this please run `ansible-playbook -i inventories/dev/hosts.yaml main.yml`
- The main.yml is a playbook with roles for different tasks
- The [groups_var/all](./groups_var/all) contains variables that are used in the playbooks
- The [roles](./roles) contains different plays for the playbook
- The [hosts](./inventories/dev/hosts.yaml) contains ip address
- Edit the [hosts](./inventories/dev/hosts.yaml) and put your ip_address
- Edit the [groups_var/all](./groups_var/all) and put your details
- Edit the templates in laravel hosts and put your domain name in the lalavel.conf files
- Make sure you are using ubuntu 22.04 or 20.04 and that the ram is 1 GB or above
- Also run `sudo apt update -y` and `sudo apt upgrade -y` on your virtual VM then run `sudo shutdown -r` to reload your virtual VM before running ansible
- Make sure ansible version is 2.9 or above
- Install all ansible galaxy dependencies needed for sql modules and community.timedate modules on your local or control node
- NOTE, you might also need to add the php repository on your virtual/ managed node before starting the playbook


## Domain name
- My domain name is [royalboe.live](https://royalboe.live) 
- Endpoints [royalboe.live/api/articles](https://royalboe.live/api/articles) [royalboe.live/tags](https://royalboe.live/api/tags)

## TODOS
- Encrypt db password with ansible vault
