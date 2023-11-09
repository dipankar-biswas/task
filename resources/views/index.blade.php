@extends('layouts.master')
@section('styles')

@endsection


@section('content')
    <div class="content text-center">
        <h1>Hi, Wellcome Sobkisubazar.com!</h1>
        
        @if(session()->get('name'))
        <h4>Name: {{ session()->get('name') }}</h4>
        <h4>Email: {{ session()->get('email') }}</h4>
        @endif

    </div>

@endsection


@section('scripts')

@endsection