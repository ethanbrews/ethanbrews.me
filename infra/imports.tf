import {
    to = cloudflare_record.www
    id = "${var.zone_id}/933d445d4a0a7b310012bc629e5c9efc"
}

import {
    to = cloudflare_record.vps_ipv4
    id = "${var.zone_id}/63f6e46d80dad2d960de5b953f99b576"
}

import {
    to = cloudflare_record.vps_ipv6
    id = "${var.zone_id}/94481cafb19148c8469a4cbf9efbfea0"
}

import {
    to = cloudflare_record.outlook_autodiscover
    id = "${var.zone_id}/17f112a550b541204d61f30e51d72b95"
}

import {
    to = cloudflare_record.outlook_mail_protect
    id = "${var.zone_id}/bbc82f673cf6cd1a84c494d4dcde385e"
}

import {
    to = cloudflare_record.microsoft_verify
    id = "${var.zone_id}/37ee9696a1431c7d79e82922b0c8dc29"
}

import {
    to = cloudflare_record.docker_registry
    id = "${var.zone_id}/7e327fc5f578f5bfc311091b8036fa87"
}