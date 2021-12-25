<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Support\Facades\DB;

class Dashboard extends Model
{
    use HasFactory;

    protected $table = 'vfs_active_status';

    public function getContentMenu() {
        $sideBar = DB::select('select content_name, icon, node from vfs_package_content where package_type_key=?', ['0']);

        return ['menu' => $sideBar];
    }

}
