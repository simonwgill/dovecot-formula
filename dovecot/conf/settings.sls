{% set p = salt['pillar.get']('dovecot:lookup', {}) %}
{% set g = salt['grains.get']('dovecot:lookup', {}) %}

{%- set defaults = { 'examplekey' : 'examplevalue',
} %}

{%- set dovecot = {} %}
{%- do dovecot.update(defaults) %}
{%- do dovecot.update(p) %}
{%- do dovecot.update(g) %}
