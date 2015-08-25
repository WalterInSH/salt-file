ruby_install:
  pkg.installed:
    - name: ruby

ruby-config:
  cmd.run:
    - name: |
      gem sources --remove https://rubygems.org/
      gem sources -a https://ruby.taobao.org/
  require:
    - pkg: ruby_install

jekyll
  gem.installed

