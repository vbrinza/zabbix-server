Vagrant.configure("2") do |config|
  config.vm.box = "http://opscode-vm-bento.s3.amazonaws.com/vagrant/virtualbox/opscode_centos-7.1_chef-provisionerless.box"
  config.vm.provider "virtualbox" do |v|
    v.memory = 2048
    v.cpus = 2
  end
  config.vm.network :private_network, ip: "192.168.33.10"
  config.vm.network :forwarded_port, guest: 80, host: 8080

  # Use rbconfig to determine if we're on a windows host or not.
  require 'rbconfig'
  is_windows = (RbConfig::CONFIG['host_os'] =~ /mswin|mingw|cygwin/)
  if is_windows
    # Provisioning configuration for shell script.
    config.vm.provision "shell" do |sh|
      sh.path = "windows.sh"
      sh.args = "vagrant_windows.yml"
    end
  else
    # Provisioning configuration for Ansible (for Mac/Linux hosts).
    config.vm.provision "ansible" do |ansible|
      ansible.playbook = "vagrant.yml"
      ansible.sudo = true
#      ansible.ask_vault_pass = true
    end
  end
end
