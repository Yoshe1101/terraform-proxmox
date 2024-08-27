module "proxmox-vm0" {
    source = "./ubuntu-vm-module"
    vmid = "200"
    name = "k3s-0"
    vmip = "192.168.50.180"
}

module "proxmox-vm1" {
    source = "./ubuntu-vm-module"
    vmid = "201"
    name = "k3s-1"
    vmip = "192.168.50.181"
}

module "proxmox-vm2" {
    source = "./ubuntu-vm-module"
    vmid = "202"
    name = "k3s-2"
    vmip = "192.168.50.182"
}