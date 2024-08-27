# Proxmox Full-Clone
# ---
# Create a new VM from a clone

resource "proxmox_vm_qemu" "vm"{

    # VM General Settings
    target_node = "vm"
    vmid = var.vmid
    name = var.name
    desc = "First deployment"
    scsihw = "virtio-scsi-pci"
    # VM Advanced General Settings
    onboot = true 

    # VM OS Settings
    clone = "ubuntu-cloud"

    full_clone = true
    # VM System Settings
    agent = 1
    
    # VM CPU Settings
    cores = 2
    sockets = 1
    cpu = "host"    
    
    # VM Memory Settings
    memory = var.memory

    # VM Network Settings
    network {
        bridge = "vmbr0"
        model  = "virtio"
    }

    disks {
        ide {
            ide2 {
                cloudinit {
                    storage = "local-lvm"
                }
            }
        }
        scsi {
            scsi0 {
            disk {
                size = var.disksize
                storage = "local-lvm"
            }
            }
        }
    }

    # VM Cloud-Init Settings
    os_type = "cloud-init"

    #boot = "order=virtio0"
    # (Optional) IP Address and Gateway
    # ipconfig0 = "ip=0.0.0.0/0,gw=0.0.0.0"
    ipconfig0 = "ip=${var.vmip}/24,gw=192.168.50.1"
    # (Optional) Default User
    ciuser = "serveradmin"
    
    sshkeys = <<EOF
    ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAACAQDLLb/a9GAVPcUPVFSqt3+deTCdVcZU/umxZKFtrvbP/FCjmTEDWRIEe6q90wlyHTaRhAjCsGtBs1sVLm9qBh+E1v9NGW/JqBKPgezB3a7K/jrv/Wzli5Pxeg4vPuhG9BdPBCy1pOoO3MnzLai4IRTBgsOR6GSMrs/oi0YXoCRMxdYPyzzSfRUGMjmTJi4SAPX51OJhaI/AooKVulnmvBAspDuectZVvqYg886DkRPecUfeLg0v30s//bfcN4qu27Bffgw+KBIs2uTAnm3Su5BTeuCcA4te4D+1jw+Eq0VV4MrwgPMAKcFugWlMi7wu3Y1ySDtc67t0fDQue6l0XQlqek601W9JZIn7pyeX2Qp1Jee4QTIiJzuhOgwdQeuZvv8D3kbIN+B6Md3Kb64pl/Za3fPhez10W14m0MpNgMwgUMjtZaQjMQ0NrAUazUwYiTA1c/z1iDwEn63virkADyYp4T6K9YefMt2ysl+3kvLor8n39mDuFSDTt4c8at2wycA9JM3PNkLRuJAdabddOC60B3tfnfe8jLw+/IWW7/YmgNjPY68pbICJqY4DxMeKAqvjX9LeJ2CrCWw3lkoJ9x2e2TWUPELf/Q2YlmkxaL9eI3sQjwH4cMrkEZOBbZ5zVXfGo/1600MR5yN7j/iqREgaL3vx3j1sSE7KyRrUf613hw== jelcano@jelcanos-MacBook-Air.local
    EOF
}