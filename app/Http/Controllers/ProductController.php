<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Product;
use Illuminate\Support\Carbon;
use Illuminate\Support\Facades\Session;
use App\Exports\ProductExport;
use App\Imports\ProductImport;
use Excel;
use PDF;
use File;

class ProductController extends Controller
{
    public function ProductViewPage(){
        $session_id = Session::getId();
        $products = Product::latest()->paginate(8);
        return view('products.product_view',compact('products'));
    }
    public function ProductAddPage(){
        return view('products.product_add');
    }
    public function ProductListPage(){
        $products = Product::latest()->get();
        return view('products.product_list',compact('products'));
    }
    public function ProductEditPage($id){
        $product = Product::findOrFail($id);
        return view('products.product_edit',compact('product'));
    }
    public function ProductAdd(Request $request){
        $this->validate($request, [
            'product_name' => 'required|string|max:255',
            'product_price' => 'required|string',
            'product_description' => 'required|string',
        ]);


        $product_add = Product::insert([
            'product_name'=>$request->product_name,
            'product_price'=>$request->product_price,
            'product_description'=>$request->product_description,
            'created_at'=>Carbon::now(),
        ]);

        if($product_add){   
            return redirect('/product-list')->with('success', 'Product inserted successfully!'); 
        }else {
            return redirect()->back()->with('error', 'Product not inserted!');   
        }
    }
    public function ProductEdit(Request $request,$id){
        $this->validate($request, [
            'product_name' => 'required|string|max:255',
            'product_price' => 'required|string',
            'product_description' => 'required|string',
        ]);


        $product_edit = Product::where('id',$id)->update([
            'product_name'=>$request->product_name,
            'product_price'=>$request->product_price,
            'product_description'=>$request->product_description,
            'created_at'=>Carbon::now(),
        ]);

        if($product_edit){   
            return redirect('/product-list')->with('success', 'Product updated successfully!'); 
        }else {
            return redirect()->back()->with('error', 'Product not updated!');   
        }
    }
    public function ProductDelete($id){

        $product_delete = Product::findOrFail($id)->delete();

        if($product_delete){   
            return redirect('/product-list')->with('success', 'Product delete successfully!'); 
        }else {
            return redirect()->back()->with('error', 'Product not deleted!');   
        }
    }

    public function ProductExcel() {
        return Excel::download(new ProductExport,'productlist.xlsx');
    }
    public function ProductCSV() {
        return Excel::download(new ProductExport,'productlist.csv');
    }
    public function ProductPDF() {
        $products = Product::latest()->get();
        $pdf =PDF::loadView('pdf.product_list',compact('products'));
        return $pdf->download('productlist.pdf');
    }
    public function ProductImportPage(){
        return view('import.product_import');
    }
    public function ProductImport(Request $request){
        $this->validate($request, [
            'file' => 'required|max:10000|mimes:xlsx,csv',
        ]);
        $import = Excel::import(new ProductImport,$request->file);
        if($import){
            return redirect('/product-list')->with('success', 'Product List Import successfully!'); 
        }else{
            return redirect()->back()->with('error', 'Product not Imported!');
        }
    }
}
