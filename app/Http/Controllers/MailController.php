<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Mail\DemoMail;
use App\Models\User;
use Illuminate\Support\Facades\Mail;
use Illuminate\Support\Str;


class MailController extends Controller
{
    public function index(Request $request)
    {
        $otp_code = rand(100000,999999);
        $token =  Str::random(80);
        $mailData = [
            'title' => 'Mail from SobKichu IT',
            'body' => 'This is for testing email using smtp.',
            'otp_code' => $otp_code,
            'token' => $token
        ];
        User::where('email',$request->email)->update([
            'otp_code'=>$otp_code
        ]);
        $send_mail = Mail::to($request->email)->send(new DemoMail($mailData));
        if($send_mail){   
            return redirect('/otp-page')->with('success', 'Please Your Mail Check!'); 
        }else {
            return redirect()->back()->with('success', 'OTP Not Match!');   
        }  
    }
}
