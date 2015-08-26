vim_install:
  pkg.installed:
    - name: vim

vim_config:
  git.latest:
    - name: git@github.com:WalterInSH/vim_cfg.git
    - user: walter
    - target: /home/walter/.vim
    - submodules: True
    - require:
      - pkg: git_install
  
/home/walter/.vimrc:
  file.symlink:
    - user: walter
    - target: /home/walter/.vim/cfg/vimrc
    - require:
      - git: vim_config
