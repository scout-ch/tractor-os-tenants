terraform {
  backend "pg" {
    conn_str = "postgres://tractor-os-tenants-tf@postgres.tractor.scout.ch:5432/tractor-os-tenants-tf?sslmode=disable"
  }
  required_providers {
    openstack = {
      source  = "terraform-provider-openstack/openstack"
      version = "3.4.0"
    }
  }
}
