ruby_install:
  pkg.installed:
    - name: ruby

add_source:
  cmd.run:
    - name: gem sources -a https://ruby.taobao.org/

remove_source:
  cmd.run:
    - name: gem sources --remove https://rubygems.org/

#jekyll
#  gem.installed

