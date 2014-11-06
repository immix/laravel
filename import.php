<?php
/*
 * Database importer tool for IMMIXCMS applications.
 */

$host = '10.0.1.106';
$pass = '';
$port = 3305;
$user = 'root';
$db = 'immixpro';
exec("mysqldump --host=127.0.0.1 --port=$port --user=$user --disable-keys --compact --single-transaction --skip-lock-tables --no-create-info --ignore-table=$db.migrations $db > import.sql");
