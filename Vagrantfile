# -*- mode: ruby -*-
# vi: set ft=ruby :

VAGRANTFILE_API_VERSION = "2"

SSH_KEY = File.read("#{ENV['HOME']}/.ssh/id_rsa.pub").chomp

Vagrant.configure(VAGRANTFILE_API_VERSION) do |config|
  config.vm.box = "chef/ubuntu-14.04"
  config.vm.network :private_network, ip: "10.10.10.10"
  config.vm.provision :shell, inline: [
    "mkdir -p /root/.ssh",
    "[ ! -f /root/.ssh/authorized_keys ] && echo '#{SSH_KEY}'> /root/.ssh/authorized_keys"
  ].join(" && ")
end
