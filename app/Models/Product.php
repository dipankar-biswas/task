<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Support\Facades\DB;

class Product extends Model
{
    use HasFactory;
    protected $guarded = [];


    public static function getProducts(){
        $records = DB::table('products')->select('id','product_name','product_price','product_description','product_image')->get()->toArray();
        return $records;
    }
}
