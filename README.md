# postgres-tutorial

A tutorial project for PostgreSQL.

# Summary

This tutorial creates database of [sample database of PostgreSQL Tutorial](http://www.postgresqltutorial.com/postgresql-sample-database/)
using [the official postgres docker image](https://hub.docker.com/_/postgres/).

# Prerequisites

- Docker

# Usage

To run server by docker, execute following commands:

```sh
cd postgres-tutorial
docker run -dP \
  --name pg-sample \
  -v "$(pwd)/docker-entrypoint-initdb.d:/docker-entrypoint-initdb.d \
  postgres
```

Then, you can access the sample `dvdrental` database by docker command like this:

```sh
docker run -it --rm --link pg-sample:server postgres \
  psql -h server -U postgres -d dvdrental 
```
