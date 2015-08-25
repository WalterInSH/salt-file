python_pkgs:
  pkg:
    - installed
    - names:
      - python
      - pip

pip_pkgs:
  pip.installed:
    - names:
    - httpie
    - stormssh
    - shadowsocks
    - Glances
    - require:
      - pkg: python-pkgs
