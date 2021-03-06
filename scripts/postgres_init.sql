/* Entrypoint script for postgres container to set up databases and users for
docker-compose setup */

CREATE DATABASE metadata; -- Used by metadata-service (called "metadata" in cloud-automation)
CREATE DATABASE metadata_db; -- Used by sheepdog and peregrine (called "sheepdog" in cloud-automation)
CREATE DATABASE fence_db;
CREATE DATABASE indexd_db;
CREATE DATABASE arborist_db;

CREATE USER metadata_user;
ALTER USER metadata_user WITH PASSWORD 'metadata_pass';
ALTER USER metadata_user WITH SUPERUSER;

CREATE USER fence_user;
ALTER USER fence_user WITH PASSWORD 'fence_pass';
ALTER USER fence_user WITH SUPERUSER;

CREATE USER peregrine_user;
ALTER USER peregrine_user WITH PASSWORD 'peregrine_pass';
ALTER USER peregrine_user WITH SUPERUSER;

CREATE USER sheepdog_user;
ALTER USER sheepdog_user WITH PASSWORD 'sheepdog_pass';
ALTER USER sheepdog_user WITH SUPERUSER;

CREATE USER indexd_user;
ALTER USER indexd_user WITH PASSWORD 'indexd_pass';
ALTER USER indexd_user WITH SUPERUSER;

CREATE USER arborist_user;
ALTER USER arborist_user WITH PASSWORD 'arborist_pass';
ALTER USER arborist_user WITH SUPERUSER;
