variable "zone_id" {
  type = string
  sensitive = true
  description = "Zone Identifier for ethanbrews.me"
}

// Website

// Hosted using pages configuration

resource "cloudflare_dns_record" "www" {
    zone_id = "${var.zone_id}"
    name    = "www"
    content = "ethanbrews.me"
    type    = "CNAME"
    proxied = false
    ttl     = 1
}

// VPS

resource "cloudflare_dns_record" "vps_ipv4" {
  zone_id = "${var.zone_id}"
  name    = "vps"
  content = "172.236.8.144"
  type    = "A"
  proxied = false
  ttl     = 1
}

resource "cloudflare_dns_record" "vps_ipv6" {
  zone_id = "${var.zone_id}"
  name    = "vps"
  content = "2600:3c13::f03c:95ff:fe3e:714a"
  type    = "AAAA"
  proxied = false
  ttl     = 1
}

// Mail

resource "cloudflare_dns_record" "autodiscover" {
    zone_id = "${var.zone_id}"
    name    = "autodiscover"
    content = "autodiscover.outlook.com"
    type    = "CNAME"
    proxied = false
    ttl     = 1
}

resource "cloudflare_dns_record" "mail_protect" {
    zone_id = "${var.zone_id}"
    name    = "ethanbrews.me"
    content = "ethanbrews-me.mail.protection.outlook.com"
    type    = "MX"
    proxied = false
    ttl     = 1
}

// Domain Verification

resource "cloudflare_dns_record" "ms_verify" {
    zone_id = "${var.zone_id}"
    name    = "ethanbrews.me"
    content = "MS=3D721FE97631AD845F458405F81F8E550EABCE0D"
    type    = "TXT"
    proxied = false
    ttl     = 1
}


