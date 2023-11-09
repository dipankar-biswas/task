@extends('layouts.master')
@section('content')
@php
use Illuminate\Support\Str;
@endphp
<div class="product-show-area mt-4">
    <div class="container mb-3">
        <div class="row">
            <div class="heading-section d-flex justify-content-between">
                <h2 class="fs-4">Multiple Image Gallery</h2>
                <div class="d-flex align-items-center column-gap-3">
                    <a href="{{ route('multiimage.zip') }}">zip file</a>
                    <a href="{{ route('multiimage.add.page') }}" class="btn btn-sm btn-primary">Multi Image Add</a>
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
            <div class="multi-images">
                @foreach($multiImages as $key=>$item)
                <div class="image">
                    <img src="{{ asset($item->multi_img) }}" data-id="{{ $item->id }}" alt="Image">
                </div>
                @endforeach
            </div>
        </div>
        <div class="row text-center mt-5">  
            <div class="col-lg-12">
            </div>
		</div>
    </div>

    <div class="modal multi-single-img fade" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
        <div class="modal-dialog">
            <div class="modal-content">
                <form action="{{ route('multiimage.delete') }}">
                    <input type="hidden" value="" name="id" class="multiimage_id">
                    <div class="modal-header">
                        <h5 class="modal-title">Modal title</h5>
                        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                    </div> 
                    <div class="modal-body">
                        <div class="modal-img-preview">
                            <img src="" alt="" style="max-width: 100%">
                        </div>
                    </div>
                    <div class="modal-footer">
                        <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>
                        <button type="submit" class="btn btn-danger">Delete</button>
                    </div>
                </form>
            </div>
        </div>
    </div>
</div>
<script>
    let image_items = document.querySelectorAll('.multi-images .image');
    let image_modal = document.querySelector('.multi-single-img');
    for(let i = 0; i < image_items.length; i++){
        let image = image_items[i];
        let img_id = image_items[i].querySelector('img').getAttribute('data-id');
        let img_url = image_items[i].querySelector('img').getAttribute('src');
        image.addEventListener('click',function(){
            var galleryModal = new bootstrap.Modal(document.querySelector('.multi-single-img'), {
                keyboard: false
            });
            galleryModal.show();

            document.querySelector('.multi-single-img input').setAttribute('value',img_id);
            document.querySelector('.modal-img-preview img').setAttribute('src',img_url);
        });
    }
</script>
<style>
    .multi-images {
        display: grid;
        grid-template-columns: repeat(6, minmax(140px, 1fr));
        column-gap: 12px;
        row-gap: 20px;
    }
    .multi-images .image img {
        width: 100%;
        height: 200px;
        object-fit: cover;
    }
</style>
@endsection