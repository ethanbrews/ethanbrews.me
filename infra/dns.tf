

variable "domain" {
  default = "ethanbrews.me"
}

// Website

// Hosted using pages configuration

resource "cloudflare_record" "www" {
    domain  = "${var.domain}"
    name    = "www"
    value   = "ethanbrews.me"
    type    = "CNAME"
    proxied = false
}

// VPS

resource "cloudflare_record" "vps" {
  domain  = "${var.domain}"
  name    = "vps"
  value   = "172.236.8.144"
  type    = "A"
  proxied = false
}

resource "cloudflare_record" "vps" {
  domain  = "${var.domain}"
  name    = "vps"
  value   = "2600:3c13::f03c:95ff:fe3e:714a"
  type    = "AAAA"
  proxied = false
}

// Mail

resource "cloudflare_record" "autodiscover" {
    domain  = "${var.domain}"
    name    = "autodiscover"
    value   = "autodiscover.outlook.com"
    type    = "CNAME"
    proxied = false
}

resource "cloudflare_record" "mail_protect" {
    domain  = "${var.domain}"
    name    = "ethanbrews.me"
    value   = "ethanbrews-me.mail.protection.outlook.com"
    type    = "MX"
    proxied = false
}

// Domain Verification

resource "cloudflare_record" "ms_verify" {
    domain  = "${var.domain}"
    name    = "ethanbrews.me"
    value   = "MS=3D721FE97631AD845F458405F81F8E550EABCE0D"
    type    = "TXT"
    proxied = false
}


