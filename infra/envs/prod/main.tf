module "site" {
  source = "../../modules/static-site"

  name        = var.name
  price_class = var.price_class
}