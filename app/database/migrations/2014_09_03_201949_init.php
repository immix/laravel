<?php

use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class WebappInit extends Migration
{

    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        $u = \Config::get('database.connections.mysql.username');
        $p = \Config::get('database.connections.mysql.password');
        $h = \Config::get('database.connections.mysql.hostname');
		$d = \Config::get('database.connections.mysql.database');
        exec("mysql --host=$h --user=$u --password=$p $d < import.sql");
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
		
    }

}
