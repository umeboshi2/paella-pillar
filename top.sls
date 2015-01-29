# -*- mode: yaml -*-

{% set hosts = ['sidesalad'] %}

base:
  '*':
    - base
    {% if salt['grains.get']('osarch') == 'jessie': %}
    - jessie
    {% endif %}
  {% for host in hosts: %}
  '{{ host }}':
    - hosts.{{ host }}
  {% endfor %}
