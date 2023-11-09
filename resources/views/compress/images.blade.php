@extends('layouts.master')
@section('content')
@php
use Illuminate\Support\Str;
@endphp
<div class="product-show-area mt-4">
    <div class="container mb-3">
        <div class="row">
            <div class="heading-section d-flex justify-content-between">
                <h2 class="fs-4">Image Compress Gallery</h2>
                <div class="d-flex align-items-center column-gap-3">
                    <a href="{{ route('multiimage.zip') }}">zip file</a>
                    <a href="{{ route('compress.add') }}" class="btn btn-sm btn-primary">Image Add</a>
                </div>
            </div>
        </div>
    </div>
    @if (Session::has('success'))
    <h4 class="form-text text-success text-center">{{ Session::get('success') }}</h4>
    @endif
    @if (Session::has('error'))
    <h4 class="form-text text-danger text-center">{{ Session::get('error') }}</h4>
    @endif
    <div class="container">
        <div class="row">
            <div class="compress-images">
                @foreach($compress as $key=>$item)
                <div class="image">
                    <img src="{{ asset($item->image) }}" data-id="{{ $item->id }}" alt="Image">
                </div>
                @endforeach
            </div>
        </div>
        <div class="row text-center mt-5">  
            <div class="col-lg-12">
            </div>
		</div>
    </div>

    <div class="modal compress-single-img fade" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
        <div class="modal-dialog">
            <div class="modal-content">
                <form action="{{ route('compress.delete') }}">
                    <input type="hidden" value="" name="id" class="image_id">
                    <div class="modal-header">
                        <h5 class="modal-title">Modal title</h5>
                        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                    </div> 
                    <div class="modal-body">
                        <div class="modal-img-preview">
                            <div class="path">SDGWE</div>
                            <img src="" alt="" style="max-width: 100%">
                        </div>
                    </div>
                    <div class="modal-footer">
                        <a class="btn btn-info download" download>Download</a>
                        <!-- <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button> -->
                        <button type="submit" class="btn btn-danger">Delete</button>
                    </div>
                </form>
            </div>
        </div>
    </div>
</div>
<script>
    let image_items = document.querySelectorAll('.compress-images .image');
    let image_modal = document.querySelector('.compress-single-img');
    for(let i = 0; i < image_items.length; i++){
        let image = image_items[i];
        let img_id = image_items[i].querySelector('img').getAttribute('data-id');
        let img_url = image_items[i].querySelector('img').getAttribute('src');
        image.addEventListener('click',function(){
            var galleryModal = new bootstrap.Modal(document.querySelector('.compress-single-img'), {
                keyboard: false
            });
            galleryModal.show();

            document.querySelector('.compress-single-img input').setAttribute('value',img_id);
            document.querySelector('.modal-img-preview img').setAttribute('src',img_url);
            document.querySelector('.modal-img-preview .path').innerHTML = img_url;
            document.querySelector('.modal-footer .download').setAttribute('href',img_url);
        });
    }
</script>
<style>
    .compress-images {
        display: grid;
        grid-template-columns: repeat(6, minmax(140px, 1fr));
        column-gap: 12px;
        row-gap: 20px;
    }
    .compress-images .image img {
        width: 100%;
        height: 200px;
        object-fit: cover;
    }
</style>
@endsection