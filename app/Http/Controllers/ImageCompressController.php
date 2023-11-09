<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Str;
use App\Models\ImageCompress;
use Image;

class ImageCompressController extends Controller
{

    public function index(){
        $compress = ImageCompress::orderBy('id','DESC')->paginate(30);
        return view('compress.images',compact('compress'));
    }

    public function create(){
        return view('compress.image_add');
    }

    public function store(Request $request){
        $this->validate($request, [
            'image_format' => ['required','string','max:5'],
            'image' => ['required','image'],
        ]);

        
        $file = $request->image;
        $path = $file->getClientOriginalName();
        $path_name = explode('.',$path)[0];

        // Create image name with it's format (Specify image saving path)
        $imageName = "uploads/compress/" . $path_name . $request->image_format;
        Image::make($request->image)->save($imageName, 20);
        
        $image = new ImageCompress();
        $image->image = 'uploads/compress/'.$path_name . $request->image_format;
        $image->save();
        
        return redirect()->route('compress.page')->with('success','Image compressed successfully');

    }

    public function delete(Request $request){
        $delete = ImageCompress::findOrFail($request->id);
        @unlink($delete->image);
        $delete->delete();

        if($delete) {
            return redirect()->route('compress.page')->with('success', 'Compress Image Deleted Successfully!');  
        }else{
            return redirect()->back()->with('error', 'Compress Image Delete, Something Wrong!'); 
        }
    }
}
