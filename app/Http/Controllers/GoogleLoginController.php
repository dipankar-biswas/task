<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Laravel\Socialite\Facades\Socialite;
use App\Models\User;

class GoogleLoginController extends Controller
{
    public function googleLogin(){
        return Socialite::driver('google')->redirect();
    }

    public function handleGoogleCallback(){
        try {
            $user = Socialite::driver('google')->user();
            $findUser = User::where('email',$user->email)->count();
            if(!$findUser){
                $findUser = new User();
                $findUser->name = $user->name;
                $findUser->email = $user->email;
                $findUser->password = "12345Dummy";
                $findUser->save();
                if ($findUser) {
                    $data = User::where('email',$user->email)->first();
                    session()->put('id',$data->id);
                    session()->put('name',$data->name);
                    session()->put('email',$data->email);
                    return redirect('/');
                }
            }else{
                $data = User::where('email',$user->email)->first();
                session()->put('id',$data->id);
                session()->put('name',$data->name);
                session()->put('email',$data->email);
                return redirect('/');
            }
        } catch (\Throwable $th) {
            dd($th->getMessage());
        }
    }
}
