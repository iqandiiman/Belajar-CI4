<?php

namespace App\Models;

use CodeIgniter\Model;

class ManusiaModel extends Model
{
    protected $table = 'manusia';
    protected $useTimestamps = true;
    protected $allowedFields = ['nama', 'alamat'];

    public function search($keyword)
    {
        // $builder = $this->table('manusia');
        // $builder->like('nama', $keyword);
        // return $builder;

        return $this->table('orang')->like('nama', $keyword)->orLike('alamat', $keyword);
    }

}