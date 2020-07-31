#generate file
rm liquibase.properties
cat <<EOT >> liquibase.properties
changeLogFile=db.changelog-master.yml
url=jdbc:$DATABASE_URL
EOT

#run migrations
liquibase update
