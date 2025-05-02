---
title: External
weight: 20
---


### Gather scope

#### Input

In scope attack surfaces.

- CIDRs
- IP Addresses
- ASNs
- Domains

Out of scope attack surfaces.

- CIDRs
- IP Addresses
- ASNs
- Domains

#### Output

- File containing in scope domains.
- File containing in scope IPv4 addresses.
- File containing in scope IPv6 addresses.

#### Tools / Scripts

- gobuster
- ffuf
- amass
- dnsrecon

#### How

- Compile a list of all supplied scope.
- Expand CIDRs.
- Perform subdomain discovery.
- Remove out of scope items.
- Separate to relevant lists.

### Host Discovery

- Resolve all domains to IP Addresses.
- Perform host discovery on IPv4 Addresses.
- Perform host discovery on IPv6 Addresses.

#### Tools / Scripts

- nmap
- masscann
- as-host-discovery
- copper


### Service Discovery

- Resolve all domains to IP Addresses.
- Perform host discovery on IPv4 Addresses.
- Perform host discovery on IPv6 Addresses.

#### Tools / Scripts

- nmap
- as-port-scan-tcp
- as-port-scan-udp
