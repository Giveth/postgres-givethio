FROM postgres:15

RUN apt-get update
RUN apt-get -y install postgresql-15-cron
COPY init-db /docker-entrypoint-initdb.d
RUN chmod +x /docker-entrypoint-initdb.d/*
