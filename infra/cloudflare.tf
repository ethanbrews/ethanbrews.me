variable "cloudflare_token" {
  type        = string
  description = "Cloudflare Scoped Access Token"
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
  api_token = var.cloudflare_token
}