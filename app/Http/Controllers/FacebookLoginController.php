<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Laravel\Socialite\Facades\Socialite;

class FacebookLoginController extends Controller
{
    public function redirectToFacebook()
    {
        return Socialite::driver('facebook')->redirect();
    }

    public function handleFacebookCallback()
    {
        $user = Socialite::driver('facebook')->user();

        // Implement your logic to authenticate or register the user here
        // For example, you can check if the user already exists in your database
        // and log them in or create a new account.

        // After authentication, you can redirect the user to a specific page.
        // For example, you can use the following code to log in the user:
        // Auth::login($user);

        // Redirect the user to a page of your choice
        return redirect('/');
    }

}