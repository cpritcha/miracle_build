# -*- mode: ruby -*-
# vi: set ft=ruby :

$script = <<SCRIPT
echo I am provisioning...
date > /etc/vagrant_provisioned_at

SCRIPT

Vagrant.configure("2") do |config|

  config.vm.box = "ubuntu/trusty64"
  config.vm.box_url = "https://atlas.hashicorp.com/ubuntu/boxes/trusty64"
  config.vm.host_name = "webserver"

  config.vm.synced_folder ".", "/opt/miracle/settings", :create => true
  config.vm.synced_folder "../miracle", "/vagrant"
  config.vm.synced_folder "../miraclelog", "/opt/miracle/logs", :create => true
  
  config.vm.provision "shell", inline: $script
  config.vm.provision :shell, :path => "Vagrant-setup/configure_postgres.sh"
  config.vm.provision :shell, :path => "Vagrant-setup/configure_python.sh"  
  config.vm.provision :shell, :path => "Vagrant-setup/configure_miracle.sh"

  # Django Port Forwarding
  config.vm.network "forwarded_port", guest: 8000, host: 8001

  # PostgreSQL Server port forwarding
  config.vm.network "forwarded_port", guest: 5432, host: 15432
end
