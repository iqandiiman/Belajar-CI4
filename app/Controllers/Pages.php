<?php

namespace App\Controllers;

class Pages extends BaseController
{
    public function index()
    {
        $data = [
            'title' => 'Home | Iq-Iman',
            'tes' => ['satu', 'dua', 'tiga']
        ];
        return view('pages/home', $data);
    }

    public function about()
    {
        $data = [
            'title' => 'About Me'
        ];
        return view('pages/about', $data);
    }

    public function contact()
    {
        $data = [
            'title' => 'Contact Us',
            'alamat' => [
                [
                    'tipe' => 'Rumah',
                    'alamat' => 'Jl. Sungai Maloso',
                    'kota' => 'Polewali Mandar'
                ],
                [
                    'tipe' => 'Kampus',
                    'alamat' => 'Parang-parang',
                    'kota' => 'Majene'
                ]
            ]
        ];
        return view('pages/contact', $data);
    }
}
