resource "random_password" "password" {
  length           = 16
  special          = true
  override_special = "!#$%&*()-_=+[]{}<>:?"

  lifecycle {
    prevent_destroy = true
  }
}

resource "random_password" "backup" {
  length           = 16
  special          = true
  override_special = "!#$%&*()-_=+[]{}<>:?"
}