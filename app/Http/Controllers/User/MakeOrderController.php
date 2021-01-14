<?php

namespace App\Http\Controllers\User;

use App\Models\Orders;
use Illuminate\Http\Request;
use App\Http\Controllers\Controller;


class MakeOrderController extends Controller
{
    //
  
      /**
     * Create a new user instance after a valid registration.
     *
     * @param  array  $data
     * @return User
     */
    protected function create(Request $request)
    {
        return Orders::create([
            'name' => $request->input('name'),
            'email' => $request->input('email'),
          'street' => $request->input('street'),
          'flatoffice' => $request->input('flatoffice'),
          'floor' => $request->input('floor'),
          'totalprice' => $request->input('totalprice'),
          'currency' => $request->input('currency')
        ]);
    }
}
