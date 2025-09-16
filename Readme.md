# Tractor OpenStack Tenants

## Initial Setup

1. Create a new OpenStack project (tenant) for Tractor.
2. Create a new db user and database for Tractor on the shared postgres db.
3. Create [application credentials](https://docs.infomaniak.cloud/identity/applications_credentials/)
4. Copy the db password and application credential secret to the `.env` file.

```bash
source .env
cd terraform
terraform init
terraform apply
```

## TODO:
- figure out way to limit s3 credentials to only access specific bucket
 => seems not possible, so we need a project per tenant => we need to automate differently.