# zabbix-server
Zabbix Server Setup using Test Kitchen, Vagrant, Bash and Ansible

How to operate when using Test Kitchen:

1. ansible-galaxy install -r requirements.yml
2. kitchen list
3. kitchen create vagrant-centos-71
4. kitchen converge vagrant-centos-71

How to operate when using Vagrant:

1. ansible-galaxy install -r requirements.yml
2. vagrant up 
