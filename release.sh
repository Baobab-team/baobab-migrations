#generate file
rm liquibase.properties
cat <<EOT >> liquibase.properties
changeLogFile:db.changelog-master.yml
url: jdbc:$DATABASE_URL
driver: org.postgresql.Driver
classpath:  liquibase/lib/postgresql-42.2.14.jar
EOT

#run migrations
liquibase update
