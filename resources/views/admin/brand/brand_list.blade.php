@extends('admin.layouts.master')

@section('admin.styles')
<link href="{{ asset('assets/backend/css/drag-drop.css') }}" rel="stylesheet" >
@endsection

@section('admin.content')
<div class="layout-content">
    <div class="page-content">
        <div class="row">
           
            @section('breadcrumbs')
            <ul class="breadcrumbs pull-left">
                <li><a href="{{ url('/') }}">Dashboard</a></li>
                <li><span>brand</span></li>
            </ul>
            @endsection
            <!-- Form inputs start -->
            <div class="col-lg-12 mt-5">
                <div class="card">
                    <div class="card-body">
                        <h4 class="header-title d-flex justify-content-between">
                            <span>Brand list</span>
                            <a href="{{ route('brand.create') }}" class="btn btn-sm btn-primary">Add Brand</a>
                        </h4>
        
                        <div class="data-tables">
        
                        @if($brands != null)
        
                            <div class="drag-drop">
                                <ul class="sortable-list">
                                    @foreach(App\Models\User::get() as $key=>$item)
                                    <li class="item" draggable="true">
                                        <div class="details">
                                            <span>{{ $key+1 }}</span>
                                            <span>{{ $item->name }}</span>
                                        </div>
                                    </li>
                                    @endforeach
                                </ul>
                            </div>
        
                        @else
                            <hr>
                            <p class="h5 text-center">Data not found!</p>
                        @endif
        
                        </div>
                    </div>
                </div>
            </div>
            <!-- Form inputs end -->
                   
        </div>
    </div>
</div>
@endsection


@section('admin.scripts')
<script src="{{ asset('assets/backend/js/drag-drop.js') }}" type="text/javascript"></script>
@endsection
