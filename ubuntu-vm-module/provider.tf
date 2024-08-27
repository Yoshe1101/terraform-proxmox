terraform {

    required_providers {
        proxmox = {
            source = "telmate/proxmox"
            version = "3.0.1-rc3"
        }
    }
}


provider "proxmox" {

    #pm_api_url = "https://proxmox-server01.example.com:8006/api2/json"


    # (Optional) Skip TLS Verification
    pm_tls_insecure = true
    alias = "default"


}