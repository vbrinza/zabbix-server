# zabbix-server
Zabbix Server Setup using Test Kitchen, Vagrant, Bash and Ansible

Requirements:

1. Virtualbox
2. Vagrant
3. Git

Optional:

1. Test Kitchen
2. Ansible

How to operate when using Test Kitchen:

1. ansible-galaxy install -r requirements.yml
2. kitchen list
3. kitchen create vagrant-centos-71
4. kitchen converge vagrant-centos-71

How to operate when using Vagrant on Linux/MacOS:

1. ansible-galaxy install -r requirements.yml
2. vagrant up

How to operate when using Vagrant on Windows:

1. cmd
2. CALL windows.cmd
3. vagrant up
