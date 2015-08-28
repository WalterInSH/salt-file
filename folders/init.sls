{{ pillar['user']['home'] }}/projects:
  file.directory:
    - user: {{ pillar['user']['name'] }}
    - group: {{ pillar['user']['name'] }}
    - dir_mode: 755

{{ pillar['user']['home'] }}/softwares:
  file.directory:
    - user: {{ pillar['user']['name'] }}
    - group: {{ pillar['user']['name'] }}
    - dir_mode: 755

