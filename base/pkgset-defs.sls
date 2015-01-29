# -*- mode: yaml -*-

named-toolset-definitions:
  base-tools:
    - bash-completion 
    - gawk
    - gnupg-agent
    - most 
    - openssh-client 
    - keychain 
    - pinentry-curses
    - screen 

  base-persistent-tools:
    - logcheck 
    - etckeeper
    
  system-monitor-tools:
    - htop 
    - iotop 
    - lsof 
    - ltrace 
    - strace
  
  serial-comm-tools:
    - minicom 
    - lrzsz 

  archive-and-compression-tools:
    - bsdtar 
    - bzip2 
    - cabextract 
    - p7zip-full 
    - pbzip2 
    - pigz 

  file-management-tools:
    - acl
    - attr 
    - fdupes 
    - hardlink
    - rsync 

  system-management-tools:
    - members 
    - slay 
    - sysv-rc-conf
    
  # some of these tools should
  # already be installed, listing
  # packages here will act as
  # assertions.
  debian-admin-tools:
    - apt-listchanges
    - dctrl-tools
    - debconf-utils
    - debian-goodies
    - reportbug

  acpi-support-tools:
    - acpid
    - acpi-support-base
    - acpitool
    
  default-text-packages:
    - ascii
    - bible-kjv
    - bible-kjv-text
    - cowsay
    - fortunes


  base-hardware-tools:
    - dmidecode
    - hddtemp
    - lm-sensors
    - sdparm
    - usbutils

  firmware-packages:
    - firmware-linux
    - firmware-linux-nonfree

  laptop-hardware-tools:
    - hibernate
    - fancontrol
    

  base-development-tools:
    - git-core
    # it seems that pkg-config is used more and more
    - pkg-config

  base-debian-dev-tools:
    - devscripts
    - cdbs

  base-python-development:
    - python-dev
    - python-requests
    - virtualenvwrapper
    - python-stdeb

  # these packages change from release
  # to release and should be tracked differently
  #python-libdev-wheezy:
  #  - libpq-dev
  #  - libjpeg62-dev 
  #  - libpng12-dev 
  #  - libfreetype6-dev 
  #  - liblcms1-dev 
  #  - libxml2-dev 
  #  - libxslt1-dev 

  python-libdev-jessie:
    - libpq-dev 
    - libjpeg-dev 
    - libpng12-dev 
    - libfreetype6-dev 
    - liblcms2-dev 
    - libxml2-dev 
    - libxslt1-dev 

  wimlib-build-depends:
    - autoconf
    - automake
    - libtool
    - debhelper
    - autotools-dev
    - pkg-config
    - libfuse-dev
    - libxml2-dev
    - libssl-dev
    - ntfs-3g-dev
    - libattr1-dev
    - attr

