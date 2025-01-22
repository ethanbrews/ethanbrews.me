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

terraform {
  required_providers {
    cloudflare = {
      source  = "cloudflare/cloudflare"
      version = "5.0.0-rc1"
    }
  }
}

provider "cloudflare" {
  email = var.cloudflare_email
  api_key = var.cloudflare_key
}