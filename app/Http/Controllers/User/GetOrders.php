<?php

namespace App\Http\Controllers\User;

use App\Models\Orders;
use Illuminate\Http\Request;
use App\Http\Controllers\Controller;

use App\Repositories\Eloquent\Criteria\EagerLoad;
use Illuminate\Support\Facades\DB;
use Illuminate\Database\Query\Builder;
use App\Http\Resources\UserResource;

class GetOrders extends Controller
{
    //
  protected $orders;
    
   

    public function index($email)
    {   

        $orders = Orders::where('email', $email)->get();
      
        
     //return new UserResource($orders);
      
     // $products = Products::all();
        
     return UserResource::collection($orders);
      
    }

}
