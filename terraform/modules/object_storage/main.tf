resource "openstack_objectstorage_container_v1" "this" {
  name = var.name
}

resource "openstack_identity_ec2_credential_v3" "this" {}
