# -*- mode: yaml -*-


<% archive_areas = 'main' %>

paella_server_ip: 10.0.4.1

packages:
  base_admin_tools: True
  debian_admin_tools: True
  acpi_packages: True


apt:
  enable_local_mirror: True
  
  local_mirror_url: http://paella/debrepos/debian
  local_mirror_dist: wheezy
  local_mirror_areas: ${archive_areas}

  enable_local_security_mirror: True

  local_security_mirror_url: http://paella/debrepos/security
  local_security_mirror_dist: wheezy/updates
  local_security_mirror_areas: ${archive_areas}
  
  enable_official_mirror: True

  official_mirror_url: http://ftp.us.debian.org/debian
  official_mirror_dist: wheezy
  official_mirror_areas: ${archive_areas}
  
  enable_official_security_mirror: True

  official_security_mirror_url: http://security.debian.org/
  official_security_mirror_dist: wheezy/updates
  official_security_mirror_areas: ${archive_areas}

  enable_salt_repository: True
  salt_repository_url: http://paella/debrepos/salt

  enable_local_paella_mirror: True
  local_paella_mirror_url: http://paella/debrepos/paella
  local_paella_mirror_dist: wheezy
  local_paella_mirror_areas: ${archive_areas}

ssh:
  hash_known_hosts: no


server:
  install_tinyca: True
  ssh:
    permit_root_login: no
    pubkey_authentication: yes
    permit_empty_passwords: no
    password_authentication: no
    use_pam: no
