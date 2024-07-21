## Terraform password management 

## How to use this module. 

This will generate the initial passwords:
```
terraform apply 
```

The output represents the password which will be used.

# Password Swapping

If terraform variable "primary" is supplied as false the secondary password will be used.  If not the primary password will be used. 

```
TF_VAR_primary=false terraform apply
```


# Backup Password Rotation
In order to rotate the secondary password: 
run the following:
```
terraform destroy -target random_password.backup
```

# Idempotency 

Passwords will be stored as long as terraform state is persisted. 
