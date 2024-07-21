## Terraform password management 

## How to use this module. 

This will generate the initial passwords:
```
terraform apply 
```

To use this module in your terraform: 
```
module "passwords" {
  source  = "./terraform-random-passwords"
  primary = true
}

output "active_password" {
  value = module.passwords.active_password
}
```

The output represents the password which will be used.

# Password Swapping

If terraform variable "primary" is supplied as false the secondary password will be used.  If not the primary password will be used. 

```
TF_VAR_primary=false terraform apply
```


# Backup Password Rotation
In order to rotate the secondary password: 
run the following with the appriopriate state item for the backup password depending on your module structure:
```
terraform destroy -target random_password.backup
```

# Idempotency 

Passwords will be stored as long as terraform state is persisted. 
