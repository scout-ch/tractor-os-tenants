output "s3_credentials" {
  value = {
    access_key = openstack_identity_ec2_credential_v3.this.access
    secret_key = openstack_identity_ec2_credential_v3.this.secret
    bucket     = openstack_objectstorage_container_v1.this.name
    endpoint   = openstack_objectstorage_container_v1.this.region == "dc4-a" ? "s3.pub2.infomaniak.cloud" : "s3.pub1.infomaniak.cloud"
  }
  sensitive = true
}
