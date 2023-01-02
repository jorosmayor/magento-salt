mysql_python_install:
  pkg.installed:
    - name: {{ pillar['mysql']['python'] }}
