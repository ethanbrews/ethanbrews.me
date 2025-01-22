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
      version = "~> 4.0"
    }
  }
}

provider "cloudflare" {
  email = var.cloudflare_email
  api_key = var.cloudflare_key
}