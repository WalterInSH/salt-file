vim_install:
  pkg.installed:
    - name: vim

vim_config:
  git.latest:
    - name: git@github.com:WalterInSH/vim_cfg.git
    - rev: master
    - user: {{ pillar['user']['name'] }}
    - target: {{ pillar['user']['home'] }}/.vim
    - submodules: True
    - identity: {{ pillar['user']['home'] }}/.ssh/id_rsa
    - require:
      - pkg: git_install
  
{{ pillar['user']['home'] }}/.vimrc:
  file.symlink:
    - user: {{ pillar['user']['name'] }}
    - target: {{ pillar['user']['home'] }}/.vim/cfg/vimrc
