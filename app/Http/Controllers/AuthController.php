<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\User;
use Illuminate\Http\RedirectResponse;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Hash;

class AuthController extends Controller
{
    public function LoginPage(){
        return view('login');
    }

    public function RegisterPage(){
        return view('register');
    }


    public function UserLogin(Request $request){

        $this->validate($request, [
            'email' => 'required',
            'password' => 'required',
        ]);
        
        $data = User::where('email', $request->email)->select('id','name','email','password')->first();

        if (Hash::check($request->input('password'), $data->password)) {
            session()->put('id',$data->id);
            session()->put('name',$data->name);
            session()->put('email',$data->email);
            return redirect('/');
        }else {
            return redirect()->back()->with('success', 'Email and Password Not Match!');   
        }

    }
    public function UserRegister(Request $request): RedirectResponse{
        $this->validate($request, [
            'name' => 'required|string|max:255',
            'username' => 'required|string|max:12',
            'email' => 'required',
            'password' => 'required',
        ]);


        User::insert([
            'name'=>$request->name,
            'username'=>$request->username,
            'email'=>$request->email,
            'password'=>Hash::make($request->password),
        ]);

        return redirect('/login');
    }

    public function LogoutUser(){
        session()->remove('id');
        session()->remove('name');
        session()->remove('email');
        return redirect('/');
    }

    public function ForgetPassword(){
        return view('forget_password');
    }

    public function OtpMatchPage(){
        return view('otp_match');
    }
    public function OtpMatch(Request $request){
        $this->validate($request, [
            'otp_code' => 'required',
        ]);
        $data = User::where('otp_code',$request->otp_code)->first();
        if($data->id > 0){   
            return redirect('change-password/'.$data->email)->with('success', 'Chose Your Password!'); 
        }else {
            return redirect()->back()->with('error', 'OTP Not Match!');   
        }
    }

    public function ChangePasswordPage(){
        return view('change_password');
    }
    public function ChangePassword(Request $request){
        $this->validate($request, [
            'email' => 'required',
            'new_password' => 'required',
            'confirm_password' => 'required',
        ]);
        if($request->new_password === $request->confirm_password){
            $check = User::where('email',$request->email)->update([
                'password'=>Hash::make($request->new_password),
            ]);
            if($check){   
                return redirect('/login'); 
            }
        }else {
            return redirect()->back()->with('success', 'Password Not Match!');   
        }
    }
}
