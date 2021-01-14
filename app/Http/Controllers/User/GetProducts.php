<?php

namespace App\Http\Controllers\User;

use App\Models\Products;
use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use App\Http\Resources\UserResource;
use App\Repositories\Eloquent\Criteria\EagerLoad;

class GetProducts extends Controller
{
    
    protected $products;
    
   

    public function index()
    {
        $products = Products::all();
        
     return UserResource::collection($products);
      
    }

    
}