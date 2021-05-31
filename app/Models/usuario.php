<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class usuario extends Model
{
    use HasFactory;
    protected $fillable  = [
        'id','nom', 'ap', 'am','especialidad','id_personas','updated_at','created_at'
    ];
}
