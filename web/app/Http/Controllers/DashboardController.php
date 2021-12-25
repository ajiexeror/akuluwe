<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Dashboard;

class DashboardController extends Controller
{
    public function index() {
        $dtActiveStatus = Dashboard::all();
        
        $menu = new Dashboard();
        $sideBar = $menu->getContentMenu();
        
        return view('dashboard', [
            'title' => ucfirst('dashboard'), //nanti ambil dari database
            'system_title' => 'Sahabat Sunnah Anasbinmalik', //nanti ambil dari database
            'dtActSts' => $dtActiveStatus,
            'sideBarMenu' => $sideBar['menu']
        ]);

    }
    
}
