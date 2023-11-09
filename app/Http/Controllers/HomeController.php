<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\MultiImage;

class HomeController extends Controller
{
    public function HomePage(){
        return view('index');
    }
}
