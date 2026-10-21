variable "name" {
  description = "Prefijo para nombrar los recursos (el bucket será <name>-<account_id>)"
  type        = string
}

variable "price_class" {
  description = "Clase de precio de CloudFront. PriceClass_All es la única que incluye ubicaciones en Sudamérica"
  type        = string
  default     = "PriceClass_All"
}