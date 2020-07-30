java -jar liquibase.jar \
      --driver=oracle.jdbc.OracleDriver \
      --changeLogFile=../db.changelog-master.yml \
      --url="jdbc:postgresql://localhost/baobab_new" \
      update
