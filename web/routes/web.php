<?php

use App\Http\Controllers\DashboardController;
use Illuminate\Support\Facades\Route;

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/

// Route::get('/', [DashboardController::class, 'getAllActiveStatus']);

Route::get('/', [DashboardController::class, 'index'])
    ->name('dashboard');




    
// Route::get('/menu11', function () {
//     return view('menu11', [
//         'title' => 'menu11', //nanti ambil dari database
//         'system_title' => 'Sahabat Sunnah Anasbinmalik' //nanti ambil dari database
//     ]);
// });

// Route::get('/menu11/{detail}/user/{uid}', function ($detail, $uid) {
//     return 'cek '. $detail . ' isine user '. $uid;
// });  