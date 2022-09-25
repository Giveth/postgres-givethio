## Postgres givethio

We needed a postgres docker image with enabled pg_cron so we wrote and publish this docker image 
to use it in https://github.com/Giveth/impact-graph

### Usage
We assumed that the **PGDATA** is `/var/lib/postgresql/data/pgdata` and the DB name is `givethio`, so if you want to use this image in 
docker-compose you can use something like this

```
  givethio-postgres:
    image: ghcr.io/giveth/postgres-givethio:latest
    restart: always
    environment:
      - POSTGRES_DB=givethio
      - POSTGRES_USER=yourDesiredUsername
      - POSTGRES_PASSWORD=yourDesiredPassword
      - PGDATA=/var/lib/postgresql/data/pgdata
```




