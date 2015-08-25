git_install:
  pkg.installed:
    - name: git

git_configure:
  cmd.run:
    - name: |
        git config --global user.name "Walter"
        git config --global user.email coolwaterever@gmail.com
        git config --global push.default simple
        git config --global core.editor "vim"
        git config --global alias.lg "log --color --graph --pretty=format:'%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset' --abbrev-commit"
    - require:
      - pkg: git_install
