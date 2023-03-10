elastic_repo:
  pkgrepo.managed:
    - humanname: Elasticsearch Repo
    - name: deb https://artifacts.elastic.co/packages/{{pillar['elastic']['version']}}/apt stable main
    - dist: stable
    - file: /etc/apt/sources.list.d/elastic-{{pillar['elastic']['version']}}.list
    - key_url: https://artifacts.elastic.co/GPG-KEY-elasticsearch
    - require_in:
      - pkg: elasticsearch