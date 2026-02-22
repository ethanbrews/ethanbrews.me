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
  content = "188.34.200.221"
  comment = "Linode VPS IPv4"
  type    = "A"
  proxied = false
  ttl     = 1
}

resource "cloudflare_record" "vps_ipv6" {
  zone_id = "${var.zone_id}"
  name    = "vps"
  content = "2a01:4f8:1c1a:a0ba::1"
  comment = "Linode VPS IPv6"
  type    = "AAAA"
  proxied = false
  ttl     = 1
}

resource "cloudflare_record" "docker_registry" {
  zone_id = "${var.zone_id}"
  name    = "registry"
  content = "vps.ethanbrews.me"
  comment = "Docker registry"
  type    = "CNAME"
  proxied = true
  ttl     = 1
}

resource "cloudflare_record" "auth" {
  zone_id = "${var.zone_id}"
  name    = "auth"
  content = "vps.ethanbrews.me"
  comment = "Pocket ID"
  type    = "CNAME"
  proxied = false
  ttl     = 1
}

resource "cloudflare_record" "headscale" {
  zone_id = "${var.zone_id}"
  name    = "vpn"
  content = "vps.ethanbrews.me"
  comment = "Brewsnet (headscale)"
  type    = "CNAME"
  proxied = false
  ttl     = 1
}

resource "cloudflare_record" "mas" {
  zone_id = "${var.zone_id}"
  name    = "mas"
  content = "vps.ethanbrews.me"
  comment = "Element MAS"
  type    = "CNAME"
  proxied = false
  ttl     = 1
}

resource "cloudflare_record" "turn" {
  zone_id = "${var.zone_id}"
  name    = "turn"
  content = "vps.ethanbrews.me"
  comment = "Element Turn"
  type    = "CNAME"
  proxied = false
  ttl     = 1
}

resource "cloudflare_record" "livekitjwt" {
  zone_id = "${var.zone_id}"
  name    = "livekit-jwt"
  content = "vps.ethanbrews.me"
  comment = "Element LiveKit JWT"
  type    = "CNAME"
  proxied = false
  ttl     = 1
}

resource "cloudflare_record" "livekit" {
  zone_id = "${var.zone_id}"
  name    = "livekit"
  content = "vps.ethanbrews.me"
  comment = "Element LiveKit"
  type    = "CNAME"
  proxied = false
  ttl     = 1
}

resource "cloudflare_record" "matrix" {
  zone_id = "${var.zone_id}"
  name    = "matrix"
  content = "vps.ethanbrews.me"
  comment = "Element Matrix"
  type    = "CNAME"
  proxied = false
  ttl     = 1
}

resource "cloudflare_record" "home" {
  zone_id = "${var.zone_id}"
  name    = "home"
  content = "vps.ethanbrews.me"
  comment = "Brewsnet (headscale)"
  type    = "CNAME"
  proxied = false
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

// Minecraft server

resource "cloudflare_record" "minecraft_stone" {
    zone_id = "${var.zone_id}"
    name    = "stoneserver.ethanbrews.me"
    content = "80.5.130.76"
    comment = "James minecraft server"
    type    = "A"
    proxied = false
    ttl     = 1
}

resource "cloudflare_record" "minecraft_main" {
    zone_id = "${var.zone_id}"
    name    = "mc.ethanbrews.me"
    content = "80.5.130.76"
    comment = "Main minecraft server"
    type    = "A"
    proxied = false
    ttl     = 1
}
