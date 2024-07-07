<?php

use Illuminate\Support\Facades\Route;
use App\Http\Controllers\MalasngodingController;
use App\Http\Controllers\PegawaiController;
use App\Http\Controllers\PenggunaController;
use App\Http\Controllers\Pegawai2Controller;
use App\Http\Controllers\GuruController;
use App\Http\Controllers\WebController;
use App\Http\Controllers\DikiController;


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

Route::get('/', function () {
    return view('welcome');
});

Route::get('/admin', function () {
    return view('admin.master');
});


//route CRUD
Route::get('/pegawai', [PegawaiController::class,'index'])->name('pegawai');
Route::get('/pegawai/tambah', [PegawaiController::class,'tambah'])->name('tambah');
Route::POST('/pegawai/store', [PegawaiController::class,'store']);
Route::get('/pegawai/edit/{id}', [PegawaiController::class,'edit']);
Route::POST('/pegawai/update', [PegawaiController::class,'update']);
Route::get('/pegawai/cari', [PegawaiController::class,'cari']);


//route input
Route::get('/input', [MalasngodingController::class,'input'])->name('input');
Route::post('/proses', [MalasngodingController::class,'proses']);

//route eloquent
Route::get('/pegawai2', [Pegawai2Controller::class,'index'])->name('pegawai2');
Route::get('/pegawai2/tambah', [Pegawai2Controller::class,'tambah'])->name('pegawai2_tambah');
Route::POST('/pegawai2/store', [Pegawai2Controller::class,'store']);
Route::get('/pegawai2/edit/{id}', [Pegawai2Controller::class,'edit']);
Route::POST('/pegawai2/update', [Pegawai2Controller::class,'update']);
Route::get('/pegawai2/hapus/{id}', [Pegawai2Controller::class,'delete']);

//route soft delete
Route::get('/guru', [GuruController::class,'index'])->name('guru');
Route::get('/guru/hapus/{id}', [GuruController::class,'delete']);
Route::get('/guru/trash', [GuruController::class,'trash']);
Route::get('/guru/kembalikan/{id}', [GuruController::class,'kembalikan']);
Route::get('/guru/kembalikan_semua', [GuruController::class,'kembalikan_semua']);
Route::get('/guru/hapus_permanen/{id}', [GuruController::class,'hapus_permanen']);
Route::get('/guru/hapus_permanen_semua', [GuruController::class,'hapus_permanen_semua']);

//rout  e one to one
Route::get('/pengguna', [PenggunaController::class,'index'])->name('pengguna');

//route one to many
Route::get('/article', [WebController::class,'index'])->name('article');

//route many to many 
Route::get('/anggota', [DikiController::class,'index'])->name('anggota');

//login
use App\Http\Controllers\AuthController;

Route::get('/login', [AuthController::class, 'showLoginForm'])->name('login');
Route::post('/login', [AuthController::class, 'login']);
Route::get('/register', [AuthController::class, 'showRegistrationForm'])->name('register');
Route::post('/register', [AuthController::class, 'register']);
Route::post('/logout', [AuthController::class, 'logout'])->name('logout');

Route::get('/admin', function () {
    return view('admin.master');
})->middleware('auth');

//enkripsi
use App\Http\Controllers\DataController;

Route::get('/data', [DataController::class, 'data'])->name('data');
Route::get('/data/{data_proses}', [DataController::class, 'data_proses'])->name('data.proses');

