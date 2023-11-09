@extends('layouts.master')
@section('content')
<div class="card" style="max-width: 700px;margin:auto;margin-top:20px">
  <div class="card-header">
    <h5>Reset Password</h5>
  </div>
  @if (Session::has('success'))
  <h4 class="form-text text-success text-center">{{ Session::get('success') }}</h4>
  @endif
  @if (Session::has('error'))
  <h4 class="form-text text-danger text-center">{{ Session::get('success') }}</h4>
  @endif
  
  <form method="POST" action="{{ route('change.password') }}" style="padding: 20px">
  @csrf
    <div class="mb-3">
        <label for="exampleInputEmail1" class="form-label">Email address</label>
        <input type="email" name="email" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" value="{{ Request()->email }}">
        @error('email')
            <div class="form-text text-danger">{{ $message }}</div>
        @enderror
    </div>
    <div class="mb-3">
        <label for="exampleInputPassword1" class="form-label">New Password</label>
        <input type="password" name="new_password" class="form-control" id="exampleInputPassword1">
        @error('new_password')
            <div class="form-text text-danger">{{ $message }}</div>
        @enderror
    </div>
    <div class="mb-3">
        <label for="exampleInputPassword1" class="form-label">Confirm Password</label>
        <input type="password" name="confirm_password" class="form-control" id="exampleInputPassword1">
        @error('confirm_password')
            <div class="form-text text-danger">{{ $message }}</div>
        @enderror
    </div>
    <button type="submit" class="btn btn-primary">Submit</button>
    </form>
</div>
@endsection