resource "google_compute_firewall" "firewall" {
    name = "allow-ssh"
    network = "default"

    allow {
        protocol = "tcp"
        ports = ["22", "2277"]
    }
    source_ranges = ["0.0.0.0/0"] 
    target_tags = ["allow-ssh"]

}

resource "google_compute_firewall"  "allow_http" {
    name = "allow-http"
    network = "default"

    allow {
        protocol = "tcp"
        ports = ["80"]
    }
    
    target_tags = ["allow-http"]

}

resource "google_compute_firewall" "allow_https" {
    name = "allow-https"
    network = "default"

    allow {
        protocol = "tcp"
        ports = ["443"]
    }

    target_tags = ["allow-https"]

}

resource "google_compute_firewall" "allow_dns" {
    name = "allow-dns"
    network = "default"

    allow {
        protocol = "tcp"
        ports = ["53"]
    }

    target_tags = ["allow-dns"]

}

resource "google_compute_firewall" "allow_whois" {
    name = "allow-whois"
    network = "default"

    allow {
        protocol = "tcp"
        ports = ["43"]
    }

    target_tags = ["allow-whois"]

}

resource "google_compute_firewall" "allow_tor" {
    name = "allow-tor"
    network = "default"

    allow {
        protocol = "tcp"
        ports = ["9050-9051"]
    }

    target_tags = ["allow-tor"]

}

resource "google_compute_firewall"  "allow_mosh" {
    name = "allow-mosh"
    network = "default"

    allow {
        protocol = "udp"
        ports = ["60000-60020"]
    }

    target_tags = ["allow-mosh"]

}

resource "google_compute_firewall"  "allow_openvpn" {
    name = "allow-openvpn"
    network = "default"

    allow {
        protocol = "udp"
        ports = ["1194"]
    }

    target_tags = ["allow-openvpn"]

}

resource "google_compute_firewall"  "allow_wireguard" {
    name = "allow-wireguard"
    network = "default"

    allow {
        protocol = "udp"
        ports = ["51820"]
    }
    
    source_ranges = ["0.0.0.0/0"]

    target_tags = ["allow-wireguard"]

}