@extends('layouts.master')
@section('content')
<div class="card" style="max-width: 700px;margin:auto;margin-top:20px">
  <div class="card-header d-flex justify-content-between">
  <h5>Product Add Form</h5>
  <a href="{{ route('product.list.page') }}" class="btn btn-sm btn-primary">Product List</a>
  </div>
  <form method="POST" action="{{ route('product.add') }}" style="padding: 20px">
  @csrf
    <div class="mb-3">
        <label for="" class="form-label">Product Name</label>
        <input type="text" name="product_name" class="form-control" id="" aria-describedby="emailHelp">
        @error('product_name')
            <div class="form-text text-danger">{{ $message }}</div>
        @enderror
    </div>
    <div class="mb-3">
        <label for="exampleInputEmail1" class="form-label">Product Price</label>
        <input type="text" name="product_price" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp">
        @error('product_price')
            <div class="form-text text-danger">{{ $message }}</div>
        @enderror
    </div>
    <div class="mb-3">
        <label for="" class="form-label">Product Description</label>
        <textarea name="product_description" class="form-control" id="" rows="6"></textarea>
        @error('product_description')
            <div class="form-text text-danger">{{ $message }}</div>
        @enderror
    </div>
    <button type="submit" class="btn btn-primary">Submit</button>
    </form>
</div>
@endsection