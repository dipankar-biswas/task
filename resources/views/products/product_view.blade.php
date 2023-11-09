@extends('layouts.master')
@section('content')
@php
use Illuminate\Support\Str;
@endphp
<div class="product-show-area mt-4">
    <div class="container mb-3">
        <div class="row">
            <div class="heading-section d-flex justify-content-between">
                <h2 class="fs-4">Product View</h2>
                <a href="{{ route('product.add.page') }}" class="btn btn-sm btn-primary">Product Add</a>
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
            @foreach($products as $key=>$item)
            <div class="col-lg-3 col-md-4 col-sm-6 col-12">
                <div class="card mb-3">
                    <img src="{{ asset('assets/images/dummy-image.jpg') }}" class="card-img-top" alt="Image">
                    <div class="card-body">
                        <h2 class="card-title fs-6">{{ $item->product_name }}</h2>
                        <h5 class="card-title fs-4 text-danger">${{ $item->product_price }}</h5>
                        <p class="card-text text-muted fs-6">{{ Str::limit($item->product_description, 60 ) }}</p>
                        <a href="{{ route('product.addtocart',$item->id) }}" class="btn btn-sm btn-success m-auto d-table">Add To Cart</a>
                    </div>
                </div>
            </div>
            @endforeach
        </div>
        <div class="row text-center mt-5">  
            <div class="col-lg-12">
            {!! $products->links('pagination::bootstrap-5') !!}
            </div>
		</div>
    </div>
</div>
@endsection