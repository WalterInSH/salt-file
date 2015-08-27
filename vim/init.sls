vim_install:
  pkg.installed:
    - name: vim

vim_config:
  git.latest:
    - name: https://github.com/WalterInSH/vim_cfg.git
    - user: {{ pillar['user']['name'] }}
    - target: {{ pillar['user']['home'] }}/.vim
    - submodules: True
    - require:
      - pkg: git_install
  
{{ pillar['user']['home'] }}/.vimrc:
  file.symlink:
    - user: {{ pillar['user']['name'] }}
    - target: {{ pillar['user']['home'] }}/.vim/cfg/vimrc
    - require:
      - git: vim_config
