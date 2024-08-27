variable "vmid" {
    type = string
}

variable "name" {
    type = string
}

variable "memory" {
    type = number
    default = 1024
}

variable "disksize" {
    type = string
    default = "20"
}

variable "vmip" {
    type = string
}

