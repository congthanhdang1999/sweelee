<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Customer extends Model
{
    protected $table = "customers";
    protected $guarded = [];
    
    public function order(){
        return $this->hasMany('App\Order', 'customer_id');
    }
}
