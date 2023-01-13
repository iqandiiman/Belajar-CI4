<?php

namespace App\Controllers;

use App\Models\ManusiaModel;

class Manusia extends BaseController
{
    protected $manusiaModel;
    public function __construct()
    {
        $this->manusiaModel = new ManusiaModel();
    }
    public function index()
    {
        $currentPage = $this->request->getVar('page_manusia') ? $this->request->getVar('page_manusia') : 1;

        $keyword = $this->request->getVar('keyword');
        if($keyword) {
            $manusia = $this->manusiaModel->search($keyword);
        } else {
            $manusia = $this->manusiaModel;
        }

        $data = [
            'title' => 'Daftar Manusia',
            // 'manusia' => $this->manusiaModel->findAll()
            'manusia' => $manusia->paginate(5, 'manusia'),
            'pager' => $this->manusiaModel->pager,
            'currentPage' => $currentPage
        ];


        return view('manusia/index', $data);
    }
}
