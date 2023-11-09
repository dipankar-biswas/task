<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Order;
use App\Models\OrderDetail;
use App\Models\Product;
use App\Models\ProductCart;
use Illuminate\Support\Carbon;
use Illuminate\Support\Facades\Session;

class ProductCartController extends Controller
{
    public function ProductCartPage(){
        $session_id = Session::getId();
        $products = ProductCart::where('session_id',$session_id)->latest()->get();
        return view('cart.product_cart',compact('products'));
    }
    public function ProductAddToCart($id){
        $session_id = Session::getId();
        $data = Product::findOrFail($id);
        $check = ProductCart::where('session_id',$session_id)->where('product_id',$id)->count();
        if(!$check){
            $product_cart = ProductCart::insert([
                'session_id'=>$session_id,
                'product_id'=>$id,
                'product_name'=>$data->product_name,
                'product_price'=>$data->product_price,
                'product_description'=>$data->product_description,
                'created_at'=>Carbon::now(),
            ]);

            if($product_cart){   
                return redirect()->back()->with('success', 'Product Add To Cart successfully!'); 
            }else {
                return redirect()->back()->with('error', 'Product not Add To Cart!');   
            }
        }else{
            return redirect()->back()->with('error', 'Product Add To Cart Already!');   
        }
    }
    public function ProductCartDelete($id){
        $session_id = Session::getId();
        $delete = ProductCart::where('session_id',$session_id)->where('id',$id)->delete();
        if($delete){   
            return redirect()->back()->with('success', 'Product Cart Delete successfully!'); 
        }else {
            return redirect()->back()->with('error', 'Something Wrong!');   
        }
    }
    public function ProductCheckoutPage(){
        $session_id = Session::getId();
        $products = ProductCart::where('session_id',$session_id)->latest()->get();
        $productsPrice = ProductCart::where('session_id',$session_id)->sum('product_price');
        return view('cart.product_checkout',compact('products','productsPrice'));
    }
    public function ProductOrder(Request $request){
        $this->validate($request, [
            'name' => 'required|string',
            'email' => 'required|string',
            'phone' => 'required',
            'address' => 'required|string',
        ]);
        $session_id = Session::getId();
        $productItems = ProductCart::where('session_id',$session_id)->count('id');
        $productsPrice = ProductCart::where('session_id',$session_id)->sum('product_price');
        $products = ProductCart::where('session_id',$session_id)->get();

        if($productItems > 0){
            foreach($products as $item){
                $product_id = $item->product_id;
                $product_name = $item->product_name;
                $product_price = $item->product_price;
                $product_description = $item->product_description;
                $product_image = $item->product_image;
                
                $order_id = Order::insertGetId([
                    'user_id'=>session()->get('id'),
                    'product_id'=>$product_id,
                    'product_name'=>$product_name,
                    'product_price'=>$product_price,
                    'product_description'=>$product_description,
                    'product_image'=>$product_image,
                    'created_at'=>Carbon::now(),
                ]);
                ProductCart::where('session_id',$session_id)->where('product_id',$product_id)->delete();
            }
    
            $order = OrderDetail::insert([
                'order_id'=>$order_id,
                'user_id'=>session()->get('id'),
                'name'=>$request->name,
                'email'=>$request->email,
                'phone'=>$request->phone,
                'address'=>$request->address,
                'created_at'=>Carbon::now(),
            ]);
            if($order){   
                return redirect('/product/order')->with('success', "Total item: <strong>".$productItems."</strong>. Total Price: <strong>$".$productsPrice."</strong>. Information, Name: <strong>".$request->name."</strong>, Email: <strong>".$request->email."</strong>, Phone: <strong>".$request->phone."</strong>, Address: <strong>".$request->address."</strong>"); 
            }else {
                return redirect()->back()->with('error', 'Product not updated!');   
            }
        }else{
            return redirect()->back()->with('error', 'Product Cart not Found!');   
        }
    }

    public function OrderSuccess(){
        return view('cart.order_success');
    }
    
}
