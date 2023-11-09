@extends('layouts.master')
@section('content')
@php
use Illuminate\Support\Str;
@endphp
<div class="product-show-area mt-4">
    <div class="container mb-3">
        <div class="row">
            <div class="heading-section d-flex justify-content-between">
                <h2 class="fs-4">Cart</h2>
                <a href="{{ route('product.view.page') }}" class="btn btn-sm btn-primary">Continue Shop</a>
            </div>
            <hr class="mt-2">
        </div>
    </div>
    <div class="container">
        <div class="row">

            @if (Session::has('success'))
            <h4 class="form-text text-success text-center">{{ Session::get('success') }}</h4>
            @endif
            @if (Session::has('error'))
            <h4 class="form-text text-danger text-center">{{ Session::get('error') }}</h4>
            @endif

            <table class="table">
                <thead>
                    <tr>
                    <th scope="col">SL.</th>
                    <th scope="col">Product Name</th>
                    <th scope="col">Product Price</th>
                    <th scope="col">Product Description</th>
                    <th scope="col">Action</th>
                    </tr>
                </thead>
                <tbody>
                    @foreach($products as $key=>$item)
                    <tr>
                        <td>{{ $key+1 }}</td>
                        <td>{{ $item->product_name }}</td>
                        <td>${{ $item->product_price }}</td>
                        <td>{{ Str::limit($item->product_description, 40 ) }}</td>
                        <td>
                            <a href="{{ route('product.cart.delete',$item->id) }}">Delete</a>
                        </td>
                    </tr>
                    @endforeach
                </tbody>
            </table>
            <div class="action">
                <a href="{{ route('product.checkout.page') }}" class="btn btn-sm btn-success d-inline-block">Checkout</a>
            </div>
        </div>
    </div>
</div>
@endsection