# -*- mode: yaml -*-


<% archive_areas = 'main' %>

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
