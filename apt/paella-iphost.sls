# -*- mode: yaml -*-

{% set archive_areas = 'main' %}
apt:
  configs:
    02proxy:
      content: |
        Acquire::http { Proxy "http://paella:8000"; };
        
  lookup:
    remove_popularitycontest: true
  repos:
    main:
      globalfile: true
      url: http://ftp.us.debian.org/debian
    main-src:
      globalfile: true
      debtype: deb-src
      url: http://ftp.us.debian.org/debian
    {% if salt['grains.get']('oscodename', '') == 'wheezy' %}
    security:
      globalfile: true
      url: http://security.debian.org/
      dist: {{ salt['grains.get']('oscodename') }}/updates
    security-src:
      globalfile: true
      url: http://security.debian.org/
      dist: {{ salt['grains.get']('oscodename') }}/updates
    {% endif %}
    saltstack:
      url: http://debian.saltstack.com/debian
      dist: {{ salt['grains.get']('oscodename', 'wheezy') }}-saltstack
      keyuri: http://debian.saltstack.com/debian-salt-team-joehealy.gpg.key
      comps:
        - main
