<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Anggota;
use App\Models\Hadiah;
class DikiController extends Controller
{
    public function index()
    {
     $anggota = Anggota::get();
     return view('anggota', ['anggota' => $anggota]);
    }
}
