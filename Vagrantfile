# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure('2') do |config|
  config.ssh.private_key_path = '/home/bseyeph/.ssh/vagrant_rsa'
  config.vm.provider :proxmox do |proxmox|
    proxmox.endpoint = 'https://192.168.1.10:8006/api2/json'
    proxmox.user_name = 'vagrant@pve'
    proxmox.password = 'vagrant'
    proxmox.vm_name_prefix = 'range_'
    proxmox.vm_id_range = 900..910
    proxmox.openvz_os_template = 'local:vztmpl/ubuntu-base.tar.gz'
    proxmox.vm_type = :lxc
    proxmox.vm_memory = 1024
    proxmox.vm_storage = 'local'
    proxmox.vm_disk_size = '50G'
  end

  config.vm.define :box, primary: true do |box|
    box.vm.box = 'dummy'
    box.vm.network :public_network, ip: '192.168.1.111'
  end
end
