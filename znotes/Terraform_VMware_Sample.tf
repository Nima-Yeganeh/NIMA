provider "vsphere" {
  user           = "your-username"
  password       = "your-password"
  vsphere_server = "your-vsphere-server"
  allow_unverified_ssl = true
}

data "vsphere_datacenter" "dc" {
  name = "your-datacenter-name"
}

data "vsphere_compute_cluster" "cluster" {
  name          = "your-cluster-name"
  datacenter_id = data.vsphere_datacenter.dc.id
}

data "vsphere_datastore" "datastore" {
  name          = "your-datastore-name"
  datacenter_id = data.vsphere_datacenter.dc.id
}

resource "vsphere_virtual_machine" "example_vm" {
  name             = "example-vm"
  resource_pool_id = data.vsphere_compute_cluster.cluster.resource_pool_id
  datastore_id     = data.vsphere_datastore.datastore.id

  num_cpus = 2
  memory   = 4096

  network_interface {
    network_id = "your-network-id"
  }

  disk {
    label = "disk0"
    size  = 40
  }

  clone {
    template_uuid = "your-template-uuid"
  }

  customization {
    linux_options {
      host_name = "example-vm"
      domain    = "example.com"
    }
  }
}
