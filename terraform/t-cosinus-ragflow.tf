module "object_storage_test" {
  source = "./modules/object_storage"
  name   = "cosinus-ragflow"
}

output "s3_credentials" {
  value     = module.object_storage_test.s3_credentials
  sensitive = true
}
