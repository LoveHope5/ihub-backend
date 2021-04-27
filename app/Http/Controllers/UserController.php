<?php

namespace App\Http\Controllers;
use App\User;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Validator;
use Illuminate\Support\Facades\Hash;
use Illuminate\Support\Str;

class UserController extends Controller
{

    

    //
    function signup(Request $req){

        //Validate
         $validated = Validator::make($req->all(), [
            'name' => 'required|string|max:255',
            'email' => 'required|string|email|max:255|unique:users',
            'password' => 'required|string|min:6|confirmed',
        ]);

        if($validated->fails()){

          
            return response()->json($validated->errors(),401);
        }else{
            $user = new User;
            $user->name = $req->input('name');
            $user->email = $req->input('email');
            $user->password= Hash::make($req->input('password'));
            $user->api_token =Str::random(60);
            $user->save();
            return response()->json(['user'=>$user ,'message'=>'Successful !'],200);
        }

 

      
    }


    function login(Request $req){

        $validator = Validator::make($req->all(),			
			[
			'email'=>'required|email|exists:cms_users',
			'password'=>'required'			
			]
		);
		
		if ($validator->fails()) 
		{
            return response()->json($validator->errors(),401);
        }else{

            
            $email = $req->input('email');
            $password= $req->input('password');
            $users 	= DB::table('cms_users')->where("email",$email)->first(); 	

            if(\Hash::check($password,$users->password)) {

                return response()->json(['user'=>$users, 'token'=>$users->api_token, 'message'=>'Successful !'],200);

            }else{
                return response()->json([ 'message'=>'Wrong Username or Password!'],401);
            }
            
        }

    }

    
}
