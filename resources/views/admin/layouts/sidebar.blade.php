<aside>
    <nav>
        <div class="brand">
            <a href="{{ route('home.page') }}">
                <span class="logo"></span>
                <span class="text">SKB</span>
            </a>
            <a href="#">*</a>
        </div>
        <ul class="navbar-nav">
            <li class="tree">
                <a href="{{ route('admin.dashboard') }}" class="link-item"><span>Dashboard</span></a>
            </li>
            <li class="tree">
                <a href="javascript:void(0)"><span>Brand</span></a>
                <ul>
                    <li><a href="{{ route('brand.list') }}" class="link-item">Brand List</a></li>
                    <li><a href="{{ route('brand.create') }}" class="link-item">Add Brand</a></li>
                </ul>
            </li>
            <li class="tree">
                <a href="javascript:void(0)"><span>Categories</span></a>
                <ul>
                    <li><a href="{{ route('category.list') }}" class="link-item">Category List</a></li>
                    <li><a href="{{ route('category.create') }}" class="link-item">Add Category</a></li>
                </ul>
            </li>
            <li class="tree">
                <a href="javascript:void(0)"><span>Products</span></a>
                <ul>
                    <li><a href="/#" class="link-item">Product List</a></li>
                    <li><a href="/#" class="link-item">Add Product</a></li>
                </ul>
            </li>
            <li>
                <a href="#" class="link-item"><span>Settings</span></a>
            </li>
        </ul>
    </nav>
</aside>