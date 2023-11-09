@extends('layouts.master')
@section('content')
<div class="card" style="max-width: 700px;margin:auto;margin-top:20px">
  <div class="card-header d-flex justify-content-between">
    <h5>Product Edit Form</h5>
    <a href="{{ route('product.list.page') }}" class="btn btn-sm btn-primary">Product List</a>
  </div>
  
    @if (Session::has('success'))
    <h4 class="form-text text-success text-center">{{ Session::get('success') }}</h4>
    @endif
    @if (Session::has('error'))
    <h4 class="form-text text-danger text-center">{{ Session::get('error') }}</h4>
    @endif

  <form method="POST" action="{{ route('product.edit',$product->id) }}" style="padding: 20px">
  @csrf
    <div class="mb-3">
        <label for="" class="form-label">Product Name</label>
        <input type="text" name="product_name" class="form-control" value="{{ $product->product_name }}" id="" aria-describedby="emailHelp">
        @error('product_name')
            <div class="form-text text-danger">{{ $message }}</div>
        @enderror
    </div>
    <div class="mb-3">
        <label for="exampleInputEmail1" class="form-label">Product Price</label>
        <input type="text" name="product_price" class="form-control" value="{{ $product->product_price }}" id="exampleInputEmail1" aria-describedby="emailHelp">
        @error('product_price')
            <div class="form-text text-danger">{{ $message }}</div>
        @enderror
    </div>
    <div class="mb-3">
        <label for="" class="form-label">Product Description</label>
        <textarea name="product_description" class="form-control" id="" rows="6">{{ $product->product_description }}</textarea>
        @error('product_description')
            <div class="form-text text-danger">{{ $message }}</div>
        @enderror
    </div>
    <button type="submit" class="btn btn-primary">Submit</button>
    </form>
</div>
@endsection