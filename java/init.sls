python_software_properties_install:
  pkg.installed:
    - name: python-software-properties

webupd8team_java:
  pkgrepo.managed:
    - humanname: Java PPA
    - name: deb http://ppa.launchpad.net/webupd8team/java/ubuntu trusty main
    - file: /etc/apt/sources.list.d/webupd8team-java-trusty.list
    - require: 
      - pkg: python_software_properties_install
      
# Automatically accept the oracle license
#Accept Oracle Terms:
#  debconf.set:
#    - name: oracle-java7-installer 
#    - data: 
#        'shared/accepted-oracle-license-v1-1': {'type': 'boolean', 'value': True }

Accept Oracle Terms:
  cmd.run:
      # debconf is used to track whether or not you've accepted the license, we just lie and say we have
          - name: "(echo debconf shared/accepted-oracle-license-v1-1 select true | debconf-set-selections) && (echo debconf shared/accepted-oracle-license-v1-1 seen true | debconf-set-selections)"
              # in this scenario, we've already accepted the license, so don't pollute debconf!
                  - unless: 'debconf-get-selections | grep -e "debconf\\s*shared/accepted-oracle-license-v1-1\\s*select\\s*true"'
                      

java_install:
  pkg.installed:
    - name: oracle-java7-installer 
    - require:
      - pkgrepo: webupd8team_java
      - cmd: Accept Oracle Terms
