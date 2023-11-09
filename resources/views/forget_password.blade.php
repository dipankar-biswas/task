@extends('layouts.master')
@section('content')
<div class="card" style="max-width: 700px;margin:auto;margin-top:20px">
  <div class="card-header">
    <h5>Forget Password</h5>
  </div>
  @if (Session::has('success'))
  <h4 class="form-text text-success text-center">{{ Session::get('success') }}</h4>
  @endif

  <form method="POST" action="{{ route('reset.password') }}" style="padding: 20px">
  @csrf
    <div class="mb-3">
        <label for="exampleInputEmail1" class="form-label">Email address</label>
        <input type="email" name="email" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp">
        @error('email')
            <div class="form-text text-danger">{{ $message }}</div>
        @enderror
    </div>
    <button type="submit" class="btn btn-primary">Submit</button>
    </form>
</div>
@endsection