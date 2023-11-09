@php
use Illuminate\Support\Str;
$session_id = Illuminate\Support\Facades\Session::getId();
$totalPrice = App\Models\ProductCart::where('session_id',$session_id)->sum('product_price');
$carts = App\Models\ProductCart::where('session_id',$session_id)->latest()->get();
$product_count = App\Models\ProductCart::where('session_id',$session_id)->count();
@endphp
<nav class="navbar navbar-expand-lg bg-body-tertiary">
  <div class="container-fluid">
    <a class="navbar-brand" href="{{ url('/') }}">Dipankar</a>
    <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
      <span class="navbar-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse ml-auto" id="navbarSupportedContent">
      <ul class="navbar-nav me-auto mb-2 mb-lg-0">
        <li class="nav-item">
          <a class="nav-link" aria-current="page" href="{{ url('/') }}">Home</a>
        </li>
        <li class="nav-item">
          <a class="nav-link" aria-current="page" href="{{ route('multiimage.page') }}">Multi Image</a>
        </li>
        <li class="nav-item">
          <a class="nav-link" aria-current="page" href="{{ route('compress.page') }}">Compress Image</a>
        </li>
        <li class="nav-item">
          <a class="nav-link" aria-current="page" href="{{ route('product.view.page') }}">Products</a>
        </li>
        @if(!session()->get('id'))
        <li class="nav-item">
          <a class="nav-link" aria-current="page" href="{{ route('login.page') }}">Login</a>
        </li>
        <li class="nav-item">
          <a class="nav-link" href="{{ route('register.page') }}">Register</a>
        </li>
        @endif
        @if(session()->get('id'))
        <li class="nav-item">
          <a class="nav-link" href="{{ route('logout.user') }}">Logout</a>
        </li>
        @endif
      </ul>
      <div class="cart-list">
        <div class="dropdown">
          <a class="btn btn-secondary dropdown-toggle" href="#" role="button" data-bs-toggle="dropdown" aria-expanded="false">
            Cart({{ $product_count }})
          </a>

          @if(count($carts) > 0)
          <ul class="dropdown-menu" style="right:0;left:auto;width:300px">
            @foreach($carts as $key=>$item)
              <li class="item d-flex gap-2 p-2">
                <img src="{{ asset('images/dummy-image.jpg') }}" class="card-img-top" alt="Image" style="width:50px;height:40px">
                <div class="content" style="width:calc(100% - 50px)">
                  <a href="{{ route('product.cart.delete',$item->id) }}" class="text-danger fs-5 float-end text-decoration-none">X</a>
                  <div class="title text-secondary" style="font-size: 14px;"><strong>{{ $item->product_name }}</strong></div>
                  <div class="price fs-6 text-danger">${{ $item->product_price }}</div>
                </div>
              </li>
              @endforeach
              <li class="item mt-1 pb-1 text-center">
                <strong>Total Price: ${{$totalPrice}}</strong>
              </li>
              <li class="item mt-2 text-center">
                <a href="{{ route('product.checkout.page') }}" class="btn btn-sm btn-success">Checkout</a>
              </li>
            </ul>
          @else
          <ul class="dropdown-menu" style="right:0;left:auto;width:300px">
            <li class="item text-center">Not Cat Data!!</li>
          </ul>
          @endif
        </div>
      </div>
    </div>
  </div>
</nav>
<style>
  .dropdown-menu .item {
    border-bottom: 1px solid #ddd;
  }
  .dropdown-menu .item:last-child {
    border-bottom: 0px solid #ddd;
  }
</style>