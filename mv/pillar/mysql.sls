#!yaml|gpg
mysql:
  pkg_name_client: 'mysql-client'
  pkg_name_server: 'mysql-server'
  python: 'python3-mysqldb'
  pkg_debconf: 'debconf'
  pkg_debconf_utils: 'debconf-utils'
  database: |
      -----BEGIN PGP MESSAGE-----
      hQGMAwOkYnQRJjvdAQwAxyUd3IIMotjXI2mBI4LKoaIQMEIM0AmhH6hay8NA9MfN
      GCgkjkZmVNG6hZ3WM+HJLkwtGlYwdSP1E5Vr3PUAul4LsYBbT06lh4vwfWFXzSsn
      ka4FK16rahFE7VS3GDj16eq6GMG5epxVthEIzznaWujvcYHaOdyDBu4oXh6Nm7a0
      CTQegaeSIWPoEmyUTrkCu8PSIuyuhr+D2ifiPVTkcYGwqt0/TpTTapolD1vqL4/M
      wrHhTe+bhR5yYpx/T5suXW/m6eOJSbBhK6DfKUPgOx0SKDxrmhrabJxXhcylz3wn
      2v7+cLmklURlFWF9sEeVyulbeB8WvdL43E0bQLRhjQC2YH67oaf5mOJ4vjmv4L95
      pWkbJ9m62Gb8FFRgYntuJoKE6t77lfp0Y9i0xjl1WER6nd2oCsuNHNqNmfAFWUhp
      4J9zwvCxLFLQLl0JPs0ZQTV/PJq8TrJVuJ+MldNxIk25Q64aBqyXHn9upHEZH4L/
      z/MPEQSSCEYhIgJYB8fX0kIBggNCeiGsBGGS943Ui0Wr66YhvTAdU02SgOlhHTsF
      77CQ6+4q8HxTUZcMFSJb/OcjkpUzxMaiFb7kjykzcK3rfxg=
      =QBrt
      -----END PGP MESSAGE-----
  user: |
      -----BEGIN PGP MESSAGE-----
      hQGMAwOkYnQRJjvdAQwAxyUd3IIMotjXI2mBI4LKoaIQMEIM0AmhH6hay8NA9MfN
      GCgkjkZmVNG6hZ3WM+HJLkwtGlYwdSP1E5Vr3PUAul4LsYBbT06lh4vwfWFXzSsn
      ka4FK16rahFE7VS3GDj16eq6GMG5epxVthEIzznaWujvcYHaOdyDBu4oXh6Nm7a0
      CTQegaeSIWPoEmyUTrkCu8PSIuyuhr+D2ifiPVTkcYGwqt0/TpTTapolD1vqL4/M
      wrHhTe+bhR5yYpx/T5suXW/m6eOJSbBhK6DfKUPgOx0SKDxrmhrabJxXhcylz3wn
      2v7+cLmklURlFWF9sEeVyulbeB8WvdL43E0bQLRhjQC2YH67oaf5mOJ4vjmv4L95
      pWkbJ9m62Gb8FFRgYntuJoKE6t77lfp0Y9i0xjl1WER6nd2oCsuNHNqNmfAFWUhp
      4J9zwvCxLFLQLl0JPs0ZQTV/PJq8TrJVuJ+MldNxIk25Q64aBqyXHn9upHEZH4L/
      z/MPEQSSCEYhIgJYB8fX0kIBggNCeiGsBGGS943Ui0Wr66YhvTAdU02SgOlhHTsF
      77CQ6+4q8HxTUZcMFSJb/OcjkpUzxMaiFb7kjykzcK3rfxg=
      =QBrt
      -----END PGP MESSAGE-----
  pass: |
      -----BEGIN PGP MESSAGE-----
      hQGMAwOkYnQRJjvdAQwAxyUd3IIMotjXI2mBI4LKoaIQMEIM0AmhH6hay8NA9MfN
      GCgkjkZmVNG6hZ3WM+HJLkwtGlYwdSP1E5Vr3PUAul4LsYBbT06lh4vwfWFXzSsn
      ka4FK16rahFE7VS3GDj16eq6GMG5epxVthEIzznaWujvcYHaOdyDBu4oXh6Nm7a0
      CTQegaeSIWPoEmyUTrkCu8PSIuyuhr+D2ifiPVTkcYGwqt0/TpTTapolD1vqL4/M
      wrHhTe+bhR5yYpx/T5suXW/m6eOJSbBhK6DfKUPgOx0SKDxrmhrabJxXhcylz3wn
      2v7+cLmklURlFWF9sEeVyulbeB8WvdL43E0bQLRhjQC2YH67oaf5mOJ4vjmv4L95
      pWkbJ9m62Gb8FFRgYntuJoKE6t77lfp0Y9i0xjl1WER6nd2oCsuNHNqNmfAFWUhp
      4J9zwvCxLFLQLl0JPs0ZQTV/PJq8TrJVuJ+MldNxIk25Q64aBqyXHn9upHEZH4L/
      z/MPEQSSCEYhIgJYB8fX0kIBggNCeiGsBGGS943Ui0Wr66YhvTAdU02SgOlhHTsF
      77CQ6+4q8HxTUZcMFSJb/OcjkpUzxMaiFb7kjykzcK3rfxg=
      =QBrt
      -----END PGP MESSAGE-----
  grants: 'ALL PRIVILEGES'
  config:
    sections:
      mysqld_safe:
        socket: /var/run/mysqld/mysqld.sock
        nice: 0
      mysqld:
        user: mysql
        pid-file: /var/run/mysqld/mysqld.pid
        socket: /var/run/mysqld/mysqld.sock
        port: 3306
        basedir: /usr
        datadir: /var/lib/mysql
        tmpdir: /tmp
        lc-messages-dir: /usr/share/mysql
        key_buffer_size: 16M
        max_allowed_packet: 16M 
        thread_stack: 192K
        thread_cache_size: 8
        myisam-recover-options: BACKUP
        log_error: /var/log/mysql/error.log
        expire_logs_days: 10
        max_binlog_size: 100M