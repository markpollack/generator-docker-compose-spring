# Introduction

This repository contains a generator that supports using docker-compose for services needed by a Spring Boot application that runs on your local machine.

If you selected a starter from the Tanzu Starter Service UI that uses this generator, it will have already been executed for you by the Starter Service.

The directory `docker` contains the files created by this generator.  They are created only if the dependency for the `postgresql` driver a dependency of your project.

To execute the generator manually, type `tss docker-compose new`.  To install the generator to your machine, type `tss generator install --go-getter-url=github.com/markpollack/generator-docker-compose-spring

The generator support is currently limited to maven based Maven projects.

# Postgres

The command `dock

Two containers are created, one for the postgres database and one for the pgAdmin GUI

Access the pgAdmin GUI at `localhost:15433`.  You can access the `psql` CLI by typing:

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

From here you can create a database by entering something such as

```
CREATE DATABASE demo1
    WITH
    OWNER = postgres
    ENCODING = 'UTF8'
    LC_COLLATE = 'en_US.utf8'
    LC_CTYPE = 'en_US.utf8'
    TABLESPACE = pg_default
    CONNECTION LIMIT = -1;
```

One way to stop everything, including umounting volumes, is to execute

```
docker system prune
```

