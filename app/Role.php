<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Role extends Model
{
    protected $guarded = [];
    public function users(){
        return $this->belongstoMany('App\User','role_user','role_id','user_id');
    }
}
