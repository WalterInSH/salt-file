python_software_properties_install:
  pkg.installed:
    - name: python-software-properties

webupd8team_java:
  pkgrepo.managed:
    - humanname: Java PPA
    - name: deb http://ppa.launchpad.net/webupd8team/java/ubuntu trusty main
    - file: /etc/apt/sources.list.d/webupd8team-java-trusty.list
      
# Automatically accept the oracle license
Accept Oracle Terms:
  debconf.set:
    - name: oracle-java7-installer 
    - data: 
        'shared/accepted-oracle-license-v1-1': {'type': 'boolean', 'value': True }

java_install:
#https://github.com/saltstack/salt/issues/26702
#  pkg.installed:
#    - name: oracle-java7-installer 
  cmd.run:
    - name: apt-get install -y --force-yes oracle-java7-installer

maven:
  pkg.installed:
    - name: maven
