ruby_install:
  pkg.installed:
    - name: ruby

add_source:
  cmd.run:
    - name: gem sources -a https://ruby.taobao.org/
    - require:
      - pkg: ruby_install

remove_source:
  cmd.run:
    - name: gem sources --remove https://rubygems.org/
    - require:
      - cmd: add_source

#jekyll
#  gem.installed

