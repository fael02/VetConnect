<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Cliente extends Model
{
    use HasFactory;

    protected $table = 'cliente';

    public $timestamps = false;

    public function _user(){
        $this->belongsTo('App\Models\User',
                            'id' /*chave local*/, 'cliente_id'/*chave estrangeira na tabela destino*/);
    }
}
