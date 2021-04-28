#!/bin/sh
pg_dump -U postgres -d postgres | gzip | gpg --batch --yes --encrypt -r my_key_id -o /backup/backup.sql.gz