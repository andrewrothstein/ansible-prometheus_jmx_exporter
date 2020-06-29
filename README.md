andrewrothstein.prometheus_jmx_exporter
=========
[![Build Status](https://travis-ci.org/andrewrothstein/ansible-prometheus_jmx_exporter.svg?branch=master)](https://travis-ci.org/andrewrothstein/ansible-prometheus_jmx_exporter)

Installs the prometheus jmx exporter javaagent [jar](https://repo1.maven.org/maven2/io/prometheus/jmx/jmx_prometheus_javaagent/)

Requirements
------------

See [meta/main.yml](meta/main.yml)

Role Variables
--------------

See [defaults/main.yml](defaults/main.yml)

Dependencies
------------

See [meta/main.yml](meta/main.yml)

Example Playbook
----------------

```yml
- hosts: servers
  roles:
    - andrewrothstein.prometheus_jmx_exporter
```

License
-------

MIT

Author Information
------------------

Andrew Rothstein <andrew.rothstein@gmail.com>
