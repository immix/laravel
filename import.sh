#!/bin/bash
mysqldump --host=localhost --port=3305 --user=vagrant --password=vagrant --database xxxxxxxxx --compact --no-create-info > import.sql
