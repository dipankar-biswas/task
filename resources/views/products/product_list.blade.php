@extends('layouts.master')
@section('content')
@php
use Illuminate\Support\Str;
@endphp
<div class="product-show-area mt-4">
    <div class="container mb-3">
        <div class="row">
            <div class="heading-section d-flex justify-content-between">
                <h2 class="fs-4">Product List</h2>
                <div class="d-flex align-items-center column-gap-3">
                    <a href="{{ route('product.import') }}">Import</a>
                    <a href="{{ route('product.pdf') }}">PDF</a>
                    <a href="{{ route('product.csv') }}">CSV</a>
                    <a href="{{ route('product.excel') }}">Excel</a>
                    <a href="{{ route('product.add.page') }}" class="btn btn-sm btn-primary">Product Add</a>
                </div>
            </div>
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
                            <a href="{{ route('product.edit.page',$item->id) }}">Edit</a>
                            <a href="{{ route('product.delete',$item->id) }}">Delete</a>
                        </td>
                    </tr>
                    @endforeach
                </tbody>
            </table>
        </div>
    </div>
</div>
@endsection