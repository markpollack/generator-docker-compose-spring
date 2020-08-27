# Introduction

This repository contains a generator that supports using docker-compose for services needed by a Spring Boot application that runs on your local machine.

If you selected a starter from the Tanzu Starter Service UI that uses this generator, it will have already been executed for you by the Starter Service.

The directory `docker` contains the files created by this generator.  They are created only if the dependency for the `postgresql` driver is a dependency in your project.

To install the generator to your machine, type

```
tss generator install --go-getter-url=github.com/markpollack/generator-docker-compose-spring
```

To execute the generator manually, type `tss docker-compose new`.

The generator support is currently limited to maven based Maven projects.

# Postgres

The generator creates a `docker` subdirectory.  In that subdirectory execute the command

```
docker-compose -f docker-compose-postgress.yaml up
```

This command will create two containers.  One for the postgres database and one for the pgAdmin GUI.  If you encounter an error, you can execute `docker system prune`

## Creating a Database

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

One way to stop everything, including unmounting volumes, is to execute

```
docker system prune
```

