// Website

// Hosted using pages configuration

resource "cloudflare_record" "www" {
    zone_id = "${var.zone_id}"
    name    = "www"
    content = "ethanbrews.me"
    comment = "Redirect to non-www"
    type    = "CNAME"
    proxied = true
    ttl     = 1
}

// VPS

resource "cloudflare_record" "vps_ipv4" {
  zone_id = "${var.zone_id}"
  name    = "vps"
  content = "172.236.8.144"
  comment = "Linode VPS IPv4"
  type    = "A"
  proxied = false
  ttl     = 1
}

resource "cloudflare_record" "vps_ipv6" {
  zone_id = "${var.zone_id}"
  name    = "vps"
  content = "2600:3c13::f03c:95ff:fe3e:714a"
  comment = "Linode VPS IPv6"
  type    = "AAAA"
  proxied = false
  ttl     = 1
}

resource "cloudflare_record" "docker_registry" {
  zone_id = "${var.zone_id}"
  name    = "docker"
  content = "vps.ethanbrews.me"
  comment = "Docker registry"
  type    = "CNAME"
  proxied = true
  ttl     = 1
}

// Mail

resource "cloudflare_record" "outlook_autodiscover" {
    zone_id = "${var.zone_id}"
    name    = "autodiscover"
    content = "autodiscover.outlook.com"
    comment = "Exchange Online Server"
    type    = "CNAME"
    proxied = false
    ttl     = 1
}

resource "cloudflare_record" "outlook_mail_protect" {
    zone_id = "${var.zone_id}"
    name    = "ethanbrews.me"
    content = "ethanbrews-me.mail.protection.outlook.com"
    comment = "Exchange Online Server"
    type    = "MX"
    proxied = false
    ttl     = 1
}

// Domain Verification

resource "cloudflare_record" "microsoft_verify" {
    zone_id = "${var.zone_id}"
    name    = "ethanbrews.me"
    content = "MS=3D721FE97631AD845F458405F81F8E550EABCE0D"
    comment = "Exchange Online Server"
    type    = "TXT"
    proxied = false
    ttl     = 1
}

// SMTP2GO

resource "cloudflare_record" "smtp2go_return" {
    zone_id = "${var.zone_id}"
    name    = "em782368"
    content = "return.smtp2go.net"
    comment = "Smtp2Go return"
    type    = "CNAME"
    proxied = false
    ttl     = 1
}

resource "cloudflare_record" "smtp2go_dkim" {
    zone_id = "${var.zone_id}"
    name    = "s782368._domainkey"
    content = "dkim.smtp2go.net"
    comment = "Smtp2Go domain key"
    type    = "CNAME"
    proxied = false
    ttl     = 1
}
