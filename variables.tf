
variable "network-name" {
    description     = "Name of network"
    type            = string
    default         = "website-pawel-network"
}

variable "region" {
    type            = string
    default         = "europe-central2"
}

variable "project" {
    type            = string
    default         = "pawel-matuszny"
}

variable "private-instance-name" {
    type            = string
    default         = "website-pawel-instance1"
}

variable "public-instance-name" {
    type            = string
    default         = "website-pawel-instance2"
}


variable "machine-type" {
    type            = string
    default         = "e2-micro"
}

variable "zone" {
    type            = string
    default         = "europe-central2-a"
}

variable "image" {
    type            = string
    default         = "ubuntu-os-cloud/ubuntu-2004-lts"
}

variable "startup-script" {
    type            = string
    default         = "sudo apt-get update; sudo apt-get install -yq build-essential python-pip rsync; pip install flask"
}

variable "subnetwork-name" {
    type            = string
    default         = "website-pawel-subnetwork"
}

variable "router-name" {
    type            = string
    default         = "website-pawel-router"
}

variable "firewall-name" {
    type            = string
    default         = "website-pawel-firewall"
}
