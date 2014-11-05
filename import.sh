#!/bin/bash
mysqldump --host=localhost --user=root --database xxxxxxxxx --compact --no-create-info > import.sql
