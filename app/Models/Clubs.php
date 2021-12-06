<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Clubs extends Model
{
    // use HasFactory;

    public $table = 'clubs';

    protected $fillable = [
        'stadiums_id',
        'name',
        'logo',
        'url',
        'thropy',
        'created_at',
        'updated_at'
    ];

    //relation with stadiums table
    public function stadiums()
    {
        return $this->belongsTo('App\Models\Stadiums', 'stadiums_id', 'id');
    }

    //relation to managers table
    public function managers()
    {
        return $this->hasMany('App\Models\Managers', 'clubs_id');
    }

    //relation to players table
    public function players()
    {
        return $this->hasMany('App\Models\Players', 'clubs_id');
    }

    //relation to matches table
    public function match_clubs()
    {
        return $this->hasOne('App\Models\Matches', 'clubs_id');
    }

    public function match_rivals()
    {
        return $this->hasOne('App\Models\Matches', 'clubs_id');
    }
}
