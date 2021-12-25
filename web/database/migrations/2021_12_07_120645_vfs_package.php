<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class VfsPackage extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('vfs_package', function (Blueprint $table) {
            $table->increments('package_id');
            $table->integer('package_type_key');
            $table->string('package_name', 50);
            $table->string('description', 255);
            $table->string('package_status', 30);
            $table->dateTime('sys_created_date');
            $table->dateTime('sys_update_date');
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('vfs_package');
    }
}
