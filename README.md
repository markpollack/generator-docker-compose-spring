# Introduction

This repository contains a generator that supports using docker-compose for services needed by a Spring Boot application that runs on your local machine.

If you selected a starter from the Tanzu Starter Service UI that uses this generator, it will have already been executed for you by the Starter Service and the directory `docker` will contain the files you need to start the services.

**Supported Services**
* [Postgres](#Postgres)

# Postgres

In the `docker` subdirectory, execute the command:

```
docker-compose -f docker-compose-postgress.yaml up
```

This command will create two containers.  One for the postgres database and one for the pgAdmin GUI.  If you encounter an error, you can execute `docker system prune` and also look to remove volumes created using `docker volume rm <volume-name>`.

A database named `demo` is already created for you to use.  The database `demo` is available on port `15432` with username `postgres` and password `password`.  Access the pgAdmin GUI at `localhost:15433`.

You can access the `psql` CLI by typing:

```
docker exec -it demo_postgres bash
```

You will see the following output:

```
root@bda99318078b:/# psql -U postgres
psql (12.4 (Debian 12.4-1.pgdg100+1))
Type "help" for help.

postgres=#
```

# Manually running the generator

To install the generator to your machine, type

```
tss generator install --go-getter-url=github.com/markpollack/generator-docker-compose-spring
```

To execute the generator manually, type `tss docker-compose new`.

The generator support is currently limited to maven based Maven projects.