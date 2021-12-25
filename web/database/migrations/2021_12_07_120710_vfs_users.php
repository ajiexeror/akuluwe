<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class VfsUsers extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('vfs_users', function (Blueprint $table) {
            $table->increments('uid');
            $table->string('username', 100);
            $table->string('email', 100);
            $table->string('password', 255);
            $table->integer('user_sub_status');
            $table->string('user_status', 30);
            $table->dateTime('verified_date');
            $table->dateTime('sys_created_date');
            $table->dateTime('sys_update_date');
            $table->string('user_group_class', 100);
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('vfs_users');
    }
}
