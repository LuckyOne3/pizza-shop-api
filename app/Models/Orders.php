<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class Orders extends Model
{
    //
   //
   /**
     * The attributes that are mass assignable.
     *
     * @var array
     */
    protected $fillable = [
        'name', 'email',
      		'street',
          'flatoffice',
          'floor',
          'totalprice',
          'currency'
    ];


 
    // Rest omitted for brevity
}
