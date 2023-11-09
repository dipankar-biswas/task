@extends('layouts.master')
@section('content')
<div class="card" style="max-width: 700px;margin:auto;margin-top:20px">
  <div class="card-header">
    <h5>Login Form</h5>
  </div>
  @if (Session::has('success'))
  <h4 class="form-text text-danger text-center">{{ Session::get('success') }}</h4>
  @endif

  <form method="POST" action="{{ route('user.login') }}" style="padding: 20px">
  @csrf
    <div class="mb-3">
        <label for="exampleInputEmail1" class="form-label">Email address</label>
        <input type="email" name="email" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp">
        @error('email')
            <div class="form-text text-danger">{{ $message }}</div>
        @enderror
    </div>
    <div class="mb-3">
        <label for="exampleInputPassword1" class="form-label">Password</label>
        <input type="password" name="password" class="form-control" id="exampleInputPassword1">
        @error('password')
            <div class="form-text text-danger">{{ $message }}</div>
        @enderror
    </div>
    <div class="mb-2 float-end">
        <a href="{{ route('forget.password') }}">Forget Password</a>
    </div>
    <button type="submit" class="btn btn-primary">Login</button>
    <div class="social-login mt-3 d-flex justify-content-center column-gap-3">
        <a href="{{ url('login/facebook') }}">Facebook Login</a>
        <a href="{{ url('login/google') }}">Google Login</a>
    </div>
    </form>
</div>
@endsection