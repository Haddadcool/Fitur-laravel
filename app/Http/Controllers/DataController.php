<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Crypt;

class DataController extends Controller
{
    public function data()
    {
        $parameter = [
            'nama' => 'Haddad Alwi',
            'pekerjaan' => 'Programmer',
        ];
        $enkripsi = Crypt::encrypt($parameter);
        return "<a href='/data/{$enkripsi}'>Klik</a>";
    }

    public function data_proses($data)
    {
        try {
            $data = Crypt::decrypt($data);

            echo "Nama : " . $data['nama'];
            echo "<br/>";
            echo "Pekerjaan : " . $data['pekerjaan'];
        } catch (\Illuminate\Contracts\Encryption\DecryptException $e) {
            abort(404);
        }
    }
}
