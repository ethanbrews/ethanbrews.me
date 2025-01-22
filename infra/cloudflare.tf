variable "cloudflare_email" {
  type        = string
  description = "Email Address for Cloudflare"
  sensitive = true
}

variable "cloudflare_key" {
  type        = string
  description = "Key for Cloudflare"
  sensitive = true
}

provider "cloudflare" {
  email = var.cloudflare_email
  token = var.cloudflare_key
}