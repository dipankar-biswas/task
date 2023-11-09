@extends('layouts.master')
@section('content')
<div class="card" style="max-width: 700px;margin:auto;margin-top:20px">
  <div class="card-header d-flex justify-content-between">
    <h5>Upload Multi Image</h5>
    <a href="{{ route('multiimage.page') }}" class="btn btn-sm btn-primary">Back</a>
  </div>
    @if (Session::has('success'))
        <h4 class="form-text text-success text-center">{{ Session::get('success') }}</h4>
    @endif
    @if (Session::has('error'))
        <h4 class="form-text text-danger text-center">{{ Session::get('error') }}</h4>
    @endif
  <form method="POST" action="{{ route('multiimage.upload') }}" enctype="multipart/form-data" style="padding: 20px">
  @csrf
    <div class="mb-3">
        <label for="" class="form-label">Multi Image Select</label>
        <input type="file" name="multi_image[]" class="form-control" id="fileName" multiple accept=".png, .jpg, .jpeg, .webp">
        @error('multi_image.*')
            <div class="form-text text-danger">{{ $message }}</div>
        @enderror
    </div>
    <div class="mb-3">
        <div id="imagePreview">

        </div>
    </div>
    <button type="submit" class="btn btn-primary">Submit</button>
    </form>
</div>

<script type="text/javascript">
    var multiImage = document.getElementById("fileName");
    var imagePreview = document.getElementById("imagePreview");
    multiImage.addEventListener("change",()=>{

        var fileName = document.getElementById("fileName").value;
        var idxDot = fileName.lastIndexOf(".") + 1;
        var extFile = fileName.substr(idxDot, fileName.length).toLowerCase();
        if (extFile=="jpg" || extFile=="jpeg" || extFile=="png" || extFile=="webp"){
            var myFiles = document.getElementById("fileName").files;
            console.log(myFiles);
            for(var i=0;i<myFiles.length; i++){
                var x = myFiles[i];

                const reader = new FileReader();

                // Convert each image file to a string
                reader.readAsDataURL(x);

                // FileReader will emit the load event when the data URL is ready
                // Access the string using reader.result inside the callback function
                reader.addEventListener('load', () => {
                    // Create new <img> element and add it to the DOM
                    imagePreview.innerHTML += `
                    <div class="image">
                        <img src='${reader.result}'>
                    </div>
                `;
                });
            }
        }else{
            alert("Only jpg/jpeg and png files are allowed!");
        }   
        function validateFileType(event){
        }
    })
</script>
<style>
    #imagePreview {
        display: flex;
        flex-wrap: wrap;
        column-gap: 11px;
        row-gap: 20px;
    }
    #imagePreview .image img {
        width: 100px;
        height: 100px;
        object-fit: cover;
    }
</style>
@endsection