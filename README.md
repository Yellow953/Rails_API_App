<!-- worked commands -->
docker compose run web rails c 

<!-- DUMP DB -->
docker exec  -e PGPASSWORD=password weather-postgres pg_dump -U root weather_development > file.bkup.sql
<!-- RESTORE DB -->
psql -d API_Test_development -f file.bkup.sql

<!-- Search for only site -->
pg_dump site:stackoverflow.com

<!-- TIP -->
localhost:3001
http://host.docker.internal:3001
