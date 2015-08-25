python_pkgs:
  pkg:
    - installed
    - names:
      - python

pip_pkgs:
  pip.installed:
    - names:
      - httpie
      - stormssh
      - shadowsocks
      - Glances
    - require:
      - pkg: python_pkgs
