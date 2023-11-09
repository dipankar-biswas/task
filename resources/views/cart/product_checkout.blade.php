@extends('layouts.master')
@section('content')
@php
use Illuminate\Support\Str;
@endphp
<div class="product-show-area mt-4">
    <div class="container mb-3">
        <div class="row">
            <div class="heading-section d-flex justify-content-between">
                <h2 class="fs-4">Checkout</h2>
                <a href="{{ route('product.cart.page') }}" class="btn btn-sm btn-primary">Back Cart</a>
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

            <div class="col-lg-6">
                <table class="table">
                    <thead>
                        <tr>
                        <th scope="col">SL.</th>
                        <th scope="col">Product Name</th>
                        <th scope="col">Price</th>
                        <th scope="col">Action</th>
                        </tr>
                    </thead>
                    <tbody>
                        @foreach($products as $key=>$item)
                        <tr>
                            <td>{{ $key+1 }}</td>
                            <td>{{ $item->product_name }}</td>
                            <td>${{ $item->product_price }}</td>
                            <td>
                                <a href="{{ route('product.cart.delete',$item->id) }}">Delete</a>
                            </td>
                        </tr>
                        @endforeach
                    </tbody>
                    <tfoot>
                        <th colspan="2" style="text-align:right;">Total:</th>
                        <th>${{ $productsPrice }}</th>
                    </tfoot>
                </table>
            </div>
            <div class="col-lg-6">
                <h5>Delivery Information.</h5>
                <hr>
                <form action="{{ route('product.order') }}" method="POST">
                    @csrf
                    <div class="row">
                        <div class="col-sm-6">
                            <div class="mb-3">
                                <label for="" class="form-label">Name</label>
                                <input type="text" name="name" value="{{ session()->get('name') }}" class="form-control" id="" aria-describedby="emailHelp">
                                @error('name')
                                    <div class="form-text text-danger">{{ $message }}</div>
                                @enderror
                            </div>
                        </div>
                        <div class="col-sm-6">
                            <div class="mb-3">
                                <label for="exampleInputEmail1" class="form-label">Email</label>
                                <input type="email" name="email" value="{{ session()->get('email') }}" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp">
                                @error('email')
                                    <div class="form-text text-danger">{{ $message }}</div>
                                @enderror
                            </div>
                        </div>
                    </div>
                    <div class="mb-3">
                        <label for="exampleInputEmail1" class="form-label">Phone</label>
                        <input type="text" name="phone" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp">
                        @error('phone')
                            <div class="form-text text-danger">{{ $message }}</div>
                        @enderror
                    </div>
                    <div class="mb-3">
                        <label for="exampleInputEmail1" class="form-label">Address</label>
                        <input type="text" name="address" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp">
                        @error('address')
                            <div class="form-text text-danger">{{ $message }}</div>
                        @enderror
                    </div>
                    <div class="mb-2">
                        <button type="submit" class="btn btn-sm btn-success">Order</button>
                    </div>
                </form>
            </div>
        </div>
    </div>
</div>
@endsection