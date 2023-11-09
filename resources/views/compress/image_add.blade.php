@extends('layouts.master')
@section('content')
<div class="card" style="max-width: 700px;margin:auto;margin-top:20px">
  <div class="card-header d-flex justify-content-between">
    <h5>Upload Multi Image</h5>
    <a href="{{ route('compress.page') }}" class="btn btn-sm btn-primary">Back</a>
  </div>
    @if (Session::has('success'))
        <h4 class="form-text text-success text-center">{{ Session::get('success') }}</h4>
    @endif
    @if (Session::has('error'))
        <h4 class="form-text text-danger text-center">{{ Session::get('error') }}</h4>
    @endif
  <form method="POST" action="{{ route('compress.upload') }}" enctype="multipart/form-data" style="padding: 20px">
  @csrf
    <div class="mb-3">
        <select name="image_format" class="form-control">
            <option value=".png">PNG</option>
            <option value=".jpg">JPG</option>
            <option value=".jpeg">JPEG</option>
            <option value=".webp">WEBP</option>
        </select>
    </div>
    <div class="mb-3">
        <label for="" class="form-label">Multi Image Select</label>
        <input type="file" name="image" class="form-control" id="fileName" accept=".png, .jpg, .jpeg, .webp">
        @error('image')
            <div class="form-text text-danger">{{ $message }}</div>
        @enderror
    </div>
    <div class="mb-3">
        <div id="imagePreview">
            <div class="image"></div>
        </div>
    </div>
    <button type="submit" class="btn btn-primary">Submit</button>
    </form>
</div>

<script type="text/javascript">
    var input_file = document.getElementById("fileName");
    input_file.addEventListener("change",()=>{        

        var fileName = document.getElementById("fileName").value;
        var idxDot = fileName.lastIndexOf(".") + 1;
        var extFile = fileName.substr(idxDot, fileName.length).toLowerCase();
        if (extFile=="jpg" || extFile=="jpeg" || extFile=="png" || extFile=="webp"){

            var reader = new FileReader();
            reader.onload = function(){
                var imagePreview = document.getElementById("imagePreview");
                imagePreview.innerHTML = `<img src="${reader.result}" style="width: 100px;height: 100px;object-fit: cover;"/>`;
            };
            reader.readAsDataURL(event.target.files[0]);

        }else{
            alert("Only webp/png/jpg/jpeg and png files are allowed!");
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
</style>
@endsection