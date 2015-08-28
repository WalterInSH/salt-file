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
Accept Oracle Terms:
  debconf.set:
    - name: oracle-java8-installer 
    - data: 
        'shared/accepted-oracle-license-v1-1': {'type': 'boolean', 'value': True }

java_install:
  pkg.installed:
    - name: oracle-java8-installer 
    - require:
      - pkgrepo: webupd8team_java
      - debconf: Accept Oracle Terms

maven:
  pkg.installed:
    - name: maven
    - require: java_install
