# -*- mode: yaml -*-
include:
  - base.default-ports
  - base.pkgset-defs
  
apt:
  configs:
    20aptitude:
      content: |
        Aptitude "";
        Aptitude::Get-Root-Command "sudo";
  
most:
  status:
    background: magenta

adduser:
  add_extra_groups: '1'
  extra_groups:
    - dialout
    - cdrom
    - floppy
    - audio
    - video
    - plugdev
    - users
    

binddns:
  lookup:
    pkgs:
      - bind9
    config:
      localzones:
        path: /etc/bind/named.conf.default-zones

        
iscdhcp:
  lookup:
    config:
      dhcpd:
        ddns_update_style: interim
        default_lease_time: 600
        max_lease_time: 7200
        authoritative: true
        log_facility: local7
            

devpackages:
  liblcms: liblcms1-dev
  emacs: emacs23
