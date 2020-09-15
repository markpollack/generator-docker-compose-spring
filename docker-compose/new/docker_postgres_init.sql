---
conditional:
  onDependency: postgresql
actions:
  to: docker/docker_postgres_init.sql
---
CREATE DATABASE demo
    WITH
    OWNER = postgres
    ENCODING = 'UTF8'
    LC_COLLATE = 'en_US.utf8'
    LC_CTYPE = 'en_US.utf8'
    TABLESPACE = pg_default
    CONNECTION LIMIT = -1;
