# -*- mode: yaml -*-

include:
  - apt.paella-iphost

hardware:
  kernel_modules:
    - evdev

system:
  initramfs_modules:
    - intel_agp
    - drm
    - 'i915 modeset=1'
  toolsets:
    base-tools: true
    system-monitor-tools: true
    archive-and-compression-tools: true
    file-management-tools: true
    debian-admin-tools: true
    default-text-packages: true
    acpi-support-tools: true
    

grub:
  grub_cmdline_linux_default: 'splash quiet'
  #grub_gfxmode: 1024x768
  grub_init_tune: '1000 334 1 334 1 0 1 334 1 0 1 261 1 334 1 0 1 392 2 0 4 196 2'
  
    
