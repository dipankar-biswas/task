<!doctype html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Product List</title>
    <style>
        .product-show-area table {
            width: 100%;
            border-collapse: collapse;
        }
        .product-show-area table th,
        .product-show-area table td {
            border: 1px solid #ddd;
            padding;12px !important;
        }
        .product-show-area table td {
            color: #777;
        }
    </style>
  </head>
  <body>

    @php
    use Illuminate\Support\Str;
    @endphp
    <div class="product-show-area mt-4">
        <table class="table">
            <thead>
                <tr>
                <th scope="col">SL.</th>
                <th scope="col">Product Name</th>
                <th scope="col">Product Price</th>
                <th scope="col">Product Description</th>
                </tr>
            </thead>
            <tbody>
                @foreach($products as $key=>$item)
                <tr>
                    <td>{{ $key+1 }}</td>
                    <td>{{ $item->product_name }}</td>
                    <td>${{ $item->product_price }}</td>
                    <td>{{ Str::limit($item->product_description, 40 ) }}</td>
                </tr>
                @endforeach
            </tbody>
        </table>
    </div>
  </body>
</html>