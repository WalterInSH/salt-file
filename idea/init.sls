download_idea:
  file.managed:
    - name: {{ pillar['user']['home'] }}/softwares/idea/ideaIU-14.1.4.tar.gz
    - source: https://d1opms6zj7jotq.cloudfront.net/idea/ideaIU-14.1.4.tar.gz
    - source_hash: sha256=5c6dfb5ba9f2c3294ee125e96e96e50287a460784287181a8e83e4326005bac3
    - user: {{ pillar['user']['name'] }}
    - group: {{ pillar['user']['name'] }}
    - makedirs: True
    - replace: False
