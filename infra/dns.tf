// Website (Hosted using pages configuration)

resource "cloudflare_record" "www" {
    zone_id = "${var.zone_id}"
    name    = "www"
    content = "ethanbrews.me"
    comment = "Serve same as non-www"
    type    = "CNAME"
    proxied = true
    ttl     = 1
}

// VPS

resource "cloudflare_record" "vps_ipv4" {
  zone_id = "${var.zone_id}"
  name    = "vps"
  content = "188.34.200.221"
  comment = "VPS IPv4"
  type    = "A"
  proxied = false
  ttl     = 1
}

resource "cloudflare_record" "vps_ipv6" {
  zone_id = "${var.zone_id}"
  name    = "vps"
  content = "2a01:4f8:1c1a:a0ba::1"
  comment = "VPS IPv6"
  type    = "AAAA"
  proxied = false
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

resource "cloudflare_record" "files" {
  zone_id = "${var.zone_id}"
  name    = "files"
  content = "vps.ethanbrews.me"
  comment = "Public File Share"
  type    = "CNAME"
  proxied = true
  ttl     = 1
}

resource "cloudflare_record" "mail-webhook" {
  zone_id = "${var.zone_id}"
  name    = "mail-webhook"
  content = "vps.ethanbrews.me"
  comment = "Microsoft graph mail webhook"
  type    = "CNAME"
  proxied = false
  ttl     = 1
}

// Mail

resource "cloudflare_record" "mxroute_witcher" {
    zone_id  = "${var.zone_id}"
    name     = "ethanbrews.me"
    content  = "witcher.mxrouting.net"
    comment  = "MX Route Email"
    type     = "MX"
    proxied  = false
    ttl      = 1
    priority = 10
}

resource "cloudflare_record" "mxroute_witcher_relay" {
    zone_id  = "${var.zone_id}"
    name     = "ethanbrews.me"
    content  = "witcher-relay.mxrouting.net"
    comment  = "MX Route Email"
    type     = "MX"
    proxied  = false
    ttl      = 1
    priority = 20
}

resource "cloudflare_record" "mxroute_verify" {
    zone_id = "${var.zone_id}"
    name    = "_da-verify-0a4c2b0ff462e427fd6f227c5e5f9151"
    content = "domain-verified"
    comment = "MXRoute Verification"
    type    = "TXT"
    proxied = false
    ttl     = 1
}

resource "cloudflare_record" "mxroute_spf" {
    zone_id = "${var.zone_id}"
    name    = "ethanbrews.me"
    content = "v=spf1 include:mxroute.com -all"
    comment = "MXRoute SPF"
    type    = "TXT"
    proxied = false
    ttl     = 1
}

resource "cloudflare_record" "mxroute_dkim" {
    zone_id = "${var.zone_id}"
    name    = "ethanbrews.me"
    content = "v=DKIM1; k=rsa; p=MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAraU/Ah2ckML8COnOf4nnK8gHigJ4iBPs+Y3Fik2zezMFWAqVvaDZM1OofF57OvwSEdmL2ZwhV/7n26X+XbSHDU95YSj8zTwoxCry+FWsdfI9qUpOFbtr2hmcEYkNHzJ31H2YpzibpFwE/2epFeRjSlAAeHCoqNzDF2u/ZTLs62jiiI6XS+iSxVbS+5MrPK/W6eTXfMdVk/5JQJrVGmY78GsF8pAxDiA70PxtUe4RJDMkmztzOqtOasZgv/SlfGBx8faZML770cRojmeIN/M8LDdFPTmaWiPonGQEvJ4Hmmnyl1qpYbMUK0pzZSozO1JJDqZNwHc/tzzQHfhDEezFxwIDAQAB"
    comment = "MXRoute DKIM"
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

resource "cloudflare_record" "minecraft" {
    zone_id = "${var.zone_id}"
    name    = "mc.ethanbrews.me"
    content = "home.dyason.com"
    comment = "Main minecraft server"
    type    = "CNAME"
    proxied = false
    ttl     = 1
}
