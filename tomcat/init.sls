download_tomcat7:  
  file.managed:
    - name: {{ pillar['user']['home'] }}/softwares/tomcat7/apache-tomcat-7.0.64.tar.gz
    - source: http://mirror.nus.edu.sg/apache/tomcat/tomcat-7/v7.0.64/bin/apache-tomcat-7.0.64.tar.gz
    - source_hash: md5=f9727a6f4a637af62a9821f8f34a7f7e 
    - user: {{ pillar['user']['name'] }}
    - group: {{ pillar['user']['name'] }}
    - makedirs: True
    - replace: False
