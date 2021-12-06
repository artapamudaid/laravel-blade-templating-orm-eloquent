<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Matches extends Model
{
    // use HasFactory;

    public $table = 'matches';
    protected $fillable = [
        'clubs_id',
        'rivals_id',
        'schedule',
        'created_at',
        'updated_at'
    ];

    public function clubs()
    {
        return $this->belongsTo('App\Models\Clubs', 'clubs_id', 'id');
    }

    public function rivals()
    {
        return $this->belongsTo('App\Models\Clubs', 'rivals_id', 'id');
    }
}
