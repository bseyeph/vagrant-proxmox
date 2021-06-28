# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure('2') do |config|
  config.vm.box_download_insecure = true
  config.vm.provider :proxmox do |proxmox|
    proxmox.box_download_insecure = true
    proxmox.endpoint = 'https://192.168.1.10:8006/api2/json'
    proxmox.user_name = 'vagrant@pve'
    proxmox.password = 'vagrant'
    proxmox.vm_type = :qemu
    proxmox.qemu_os = :l26
    proxmox.vm_name_prefix = 'range_'
    proxmox.qemu_storage = 'local-lvm'
    proxmox.qemu_iso = 'local:iso/kali-linux-2020.3-installer-amd64.iso'
    proxmox.qemu_disk_size = '60G'
    proxmox.vm_memory = 1024
    proxmox.qemu_cores = 1
    proxmox.qemu_sockets = 1
    proxmox.qemu_nic_model = 'virtio'
    proxmox.qemu_bridge = 'vmbr0'
  end

  config.vm.define :box, primary: true do |box|
    box.vm.box = 'dummy'
    box.vm.network :public_network, ip: '192.168.1.111'
  end
end
