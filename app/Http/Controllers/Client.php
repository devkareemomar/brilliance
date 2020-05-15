<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Service;
// use App\Auth;
use Illuminate\Support\Facades\Auth;

class Client extends Controller
{
 
    public function store(Request $request){
        // \App::setLocale($lang);
       $lang = $request->input("lang");
        $request->validate([
            'email' => 'required',
            'password' => 'required',
            
        ]);
        $remember =request()->has('remember')?true:false;
        if(Auth::guard('webclient')->attempt(['email'=>request('email'),'password'=>request('password')],$remember)){

            
            return redirect("ar/profile");

           }else{
            // return redirect('ar');
            return back();

           }
    
        }
    public function distroy(){

         auth()->logout();
         return redirect('/');

    }

}

