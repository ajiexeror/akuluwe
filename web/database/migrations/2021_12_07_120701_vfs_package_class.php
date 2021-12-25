<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class VfsPackageClass extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('vfs_package_class', function (Blueprint $table) {
            $table->increments('package_id');
            $table->integer('package_type_key');
            $table->integer('package_class_id');
            $table->string('class_name', 50);
            $table->string('class_alias', 50);
            $table->string('class_status', 30);
            $table->dateTime('sys_created_date');
            $table->dateTime('sys_update_date');
            $table->string('package_node', 50);
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('vfs_package_class');
    }
}
