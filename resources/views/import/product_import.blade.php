@extends('layouts.master')
@section('content')
<div class="card" style="max-width: 700px;margin:auto;margin-top:20px">
    <div class="card-header d-flex justify-content-between">
      <h5>Product List Upload</h5>
      <a href="{{ route('product.list.page') }}" class="btn btn-sm btn-primary">Back</a>
    </div>
    
      @if (Session::has('success'))
      <h4 class="form-text text-success text-center">{{ Session::get('success') }}</h4>
      @endif
      @if (Session::has('error'))
      <h4 class="form-text text-danger text-center">{{ Session::get('error') }}</h4>
      @endif
  
    <form method="POST" action="{{ route('product.import') }}" enctype="multipart/form-data" style="padding: 20px">
    @csrf
      <div class="mb-3">
          <label for="" class="form-label">Select CSV/Excel File</label>
          <input type="file" name="file" class="form-control" id="" aria-describedby="emailHelp">
          @error('file')
              <div class="form-text text-danger">{{ $message }}</div>
          @enderror
      </div>
      <button type="submit" class="btn btn-primary">Submit</button>
    </form>
</div>
@endsection