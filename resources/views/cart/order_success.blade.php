@extends('layouts.master')
@section('content')
<div class="product-show-area mt-4">
    <div class="container mb-3">
        <div class="row">
            <div class="content text-center">
                <h4>Order Success</h4>
                @if (Session::has('success'))
                <h4 class="form-text text-success text-center">{!! Session::get('success') !!}</h4>
                @endif
                @if (Session::has('error'))
                <h4 class="form-text text-danger text-center">{{ Session::get('error') }}</h4>
                @endif
                <a href="{{ route('product.view.page') }}" class="btn btn-sm btn-success">Goto Home</a>
            </div>
        </div>
    </div>
</div>
@endsection