<?php
/*
 * Database importer tool for IMMIXCMS applications.
 */

$host = '127.0.0.1';
$pass = '';
$port = 3305;
$user = 'root';
$db = 'database';
exec("mysqldump --host=$host --port=$port --user=$user --disable-keys --compact --single-transaction --skip-lock-tables --no-create-info --ignore-table=$db.migrations $db > import.sql");
