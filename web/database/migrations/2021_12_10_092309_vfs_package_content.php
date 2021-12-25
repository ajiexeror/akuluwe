<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class VfsPackageContent extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('vfs_package_content', function (Blueprint $table) {
            $table->increments('package_content_id');
            $table->integer('package_type_key');
            $table->string('content_name', 100);
            $table->string('description', 50);
            $table->string('content_status', 30);
            $table->dateTime('sys_created_date');
            $table->dateTime('sys_update_date');
            $table->string('node', 50);
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('vfs_package_content');
    }
}
