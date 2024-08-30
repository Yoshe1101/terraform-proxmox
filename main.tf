module "proxmox-vm0" {
    source = "./ubuntu-vm-module"
    vmid = "200"
    name = "k3s-0-Server"
    vmip = "192.168.50.180"
}

module "proxmox-vm1" {
    source = "./ubuntu-vm-module"
    vmid = "201"
    name = "k3s-1-Server"
    vmip = "192.168.50.181"
}

module "proxmox-vm2" {
    source = "./ubuntu-vm-module"
    vmid = "202"
    name = "k3s-2-Agent"
    vmip = "192.168.50.182"
}

module "proxmox-vm3" {
    source = "./ubuntu-vm-module"
    vmid = "203"
    name = "k3s-3-Agent"
    vmip = "192.168.50.183"
}

module "proxmox-vm4" {
    source = "./ubuntu-vm-module"
    vmid = "204"
    name = "k3s-4-Agent"
    vmip = "192.168.50.184"
}

module "proxmox-vm5" {
    source = "./ubuntu-vm-module"
    vmid = "205"
    name = "k3s-5-Agent"
    vmip = "192.168.50.185"
}

module "databases" {
    source = "./ubuntu-vm-module"
    vmid = "206"
    name = "databases-00"
    vmip = "192.168.50.186"
}

module "network" {
    source = "./ubuntu-vm-module"
    vmid = "207"
    name = "networking-00"
    vmip = "192.168.50.187"
}