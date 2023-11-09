@extends('admin.layouts.master')

@section('admin.content')
<div class="layout-content">
    <div class="page-content">
        <div class="row">
           
            @section('breadcrumbs')
            <ul class="breadcrumbs pull-left">
                <li><a href="{{ url('/') }}">Dashboard</a></li>
                <li><span>Category</span></li>
            </ul>
            @endsection
            <!-- Form inputs start -->
            <div class="col-lg-12 mt-5">
                <div class="card">
                    <div class="card-body">
                        <h4 class="header-title d-flex justify-content-between">
                            <span>Category list</span>
                            <a href="{{ route('category.create') }}" class="btn btn-sm btn-primary">Add Category</a>
                        </h4>
        
                        <div class="data-tables">
        
                        @if($categories != null)
        
                            <table id="dataTable" class="text-center">
                                <thead class="bg-light text-capitalize">
                                    <tr>
                                        <th>SL</th>
                                        {{-- <th>Image</th> --}}
                                        <th>Name</th>
                                        {{-- <th>Slug</th> --}}
                                        <th>Action</th>
                                        <th></th>
                                    </tr>
                                </thead>
                                <tbody>
                                    @php
                                        $i = 1;
                                    @endphp
                                    @foreach($categories as $item)
                                    <tr>
                                        <td>{{$i++}}</td>
                                        {{-- <td><img src="{{ asset($item->image) }}" alt="Image" style="width: 50px;height:40px"></td> --}}
                                        <td>{{ucfirst(substr($item->name, 0, 20))}}</td>
                                        {{-- <td>{{ $item->slug }}</td> --}}
                                        <td>
                                            <a class="btn btn-sm btn-primary" href="{{ route('category.show',$item->id) }}"><i class="fa fa-edit"></i></a>
                                            <a onclick="return confirm('Are you sure Delete?')" href="{{ route('category.delete',$item->id) }}" class="btn btn-sm btn-danger"><i class="fa fa-trash"></i> </a>
                                        </td>
                                    </tr>
                                    @endforeach
                                </tbody>
                            </table>
        
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