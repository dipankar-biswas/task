<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\MultiImage;
use ZipArchive;
use File;

class MultiImageController extends Controller
{
    public function MultiImagePage(){
        $multiImages = MultiImage::orderBy('id','DESC')->paginate(30);
        return view('multi.multiimage',compact('multiImages'));
    }

    public function MultiImageAddPage(){
        return view('multi.multiimage_add');
    }

    public function MultiImageUpload(Request $request){
        $this->validate($request, [
            'multi_image' => 'required',
        ]);

        if(count($request->multi_image)){
            foreach($request->multi_image as $file){
                $path=$file->getClientOriginalName();
                $file->move('uploads/multi',$path);
                $image = new MultiImage();
                $image->multi_img = 'uploads/multi/'.$path;
                $image->save();
            }
            return redirect('/multiimage')->with('success', 'Multiple Image Upload Successfully!');  
        }else{
            return redirect()->back()->with('error', 'Something Wrong!'); 
        }
    }

    public function MultiImageDelete(Request $request){
        $delete = MultiImage::findOrFail($request->id);
        @unlink($delete->multi_img);
        $delete->delete();

        if($delete) {
            return redirect('/multiimage')->with('success', 'Multiple Image Deleted Successfully!');  
        }else{
            return redirect()->back()->with('error', 'Image Delete, Something Wrong!'); 
        }
    }



    public function MultiImageZip(Request $request){
        $zip = new ZipArchive;
        $fileName = 'multiImageZip.zip';
        if($zip->open(public_path($fileName),ZipArchive::CREATE) === TRUE){
            $files = File::files(public_path('uploads/multi'));
            foreach($files as $key => $value){
                $relativeNameInZipFIle = basename($value);
                $zip->addFile($value,$relativeNameInZipFIle);
            }
            $zip->close();
        }
        return response()->download(public_path($fileName));
    }

    
}
