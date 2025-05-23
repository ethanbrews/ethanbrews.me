variable "cloudflare_token" {
  type        = string
  description = "Cloudflare Scoped Access Token"
  sensitive = true
}

variable "zone_id" {
  type = string
  sensitive = true
  description = "Zone Identifier for ethanbrews.me"
}

terraform {
  required_providers {
    cloudflare = {
      source  = "cloudflare/cloudflare"
      version = "~> 4"
    }
    aws = {
      source = "hashicorp/aws"
      version = "~> 5"
    }
  }

  backend "s3" {
    bucket     = "tf-state"
    key        = "terraform.state"
    endpoints  = { s3="https://918684117b3dced9b243d6c52c9f4631.r2.cloudflarestorage.com" }
    region     = "weur"

    skip_credentials_validation = true
    skip_region_validation      = true
    skip_requesting_account_id  = true
    skip_metadata_api_check     = true
    skip_s3_checksum            = true
  }
}

provider "cloudflare" {
  api_token = var.cloudflare_token
}