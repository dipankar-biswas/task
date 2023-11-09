<?php

use Illuminate\Support\Facades\Route;
use App\Http\Controllers\HomeController;
use App\Http\Controllers\AuthController;
use App\Http\Controllers\ImageCompressController;
use App\Http\Controllers\MailController;
use App\Http\Controllers\MultiImageController;
use App\Http\Controllers\ProductController;
use App\Http\Controllers\ProductCartController;
use App\Http\Controllers\FacebookLoginController;
use App\Http\Controllers\GoogleLoginController;

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider and all of them will
| be assigned to the "web" middleware group. Make something great!
|
*/

// Home Route
Route::controller(HomeController::class)->group(function(){
    Route::get('/','HomePage')->name('home.page');
});
// =====================================
// Product Route
Route::controller(ProductController::class)->group(function(){
    Route::get('/products', 'ProductViewPage')->name('product.view.page');
});
// Multi Image Route
Route::controller(MultiImageController::class)->group(function(){
    Route::get('/multiimage', 'MultiImagePage')->name('multiimage.page');
});


// ==========================================
// ==========================================
// ==========================================
Route::middleware(['logoutCheck'])->group(function(){
    Route::controller(AuthController::class)->group(function(){
        Route::get('/login','LoginPage')->name('login.page');
        Route::post('/login-user', 'UserLogin')->name('user.login');
        Route::get('/register','RegisterPage')->name('register.page');
        Route::post('/register-user',  'UserRegister')->name('user.register');
        Route::get('/password-forget', 'ForgetPassword')->name('forget.password');
        Route::get('/otp-page', 'OtpMatchPage')->name('otp.page');
        Route::post('/otp-match', 'OtpMatch')->name('otp.match');
        Route::get('/change-password/{email}', 'ChangePasswordPage')->name('change.password.page');
        Route::post('/change-password', 'ChangePassword')->name('change.password');
    });
    Route::controller(MailController::class)->group(function(){
        Route::post('/reset-password', 'index')->name('reset.password');   
    });
});



// ==========================================
// ==========================================
// ==========================================
Route::middleware(['loginCheck'])->group(function(){
    // User
    Route::controller(AuthController::class)->group(function(){
        Route::get('/logout-user',  'LogoutUser')->name('logout.user');    
    });

    // Product Route
    Route::controller(ProductController::class)->group(function(){
        Route::get('/product-add', 'ProductAddPage')->name('product.add.page');
        Route::get('/product-list', 'ProductListPage')->name('product.list.page');
        Route::get('/product-edit/{id}', 'ProductEditPage')->name('product.edit.page');
        Route::post('/product-add', 'ProductAdd')->name('product.add');
        Route::post('/product-edit/{id}', 'ProductEdit')->name('product.edit');
        Route::get('/product-delete/{id}', 'ProductDelete')->name('product.delete');
        Route::get('/product-excel', 'ProductExcel')->name('product.excel');
        Route::get('/product-csv', 'ProductCSV')->name('product.csv');
        Route::get('/product-pdf', 'ProductPDF')->name('product.pdf');

        Route::get('/product-import', 'ProductImportPage')->name('product.import');
        Route::post('/product-import', 'ProductImport')->name('product.import');
    });

    // Product Cart Route
    Route::controller(ProductCartController::class)->group(function(){
        Route::get('/product/cart', 'ProductCartPage')->name('product.cart.page');
        Route::get('/product-addtocart/{id}', 'ProductAddToCart')->name('product.addtocart');
        Route::get('/product/cart/delete/{id}', 'ProductCartDelete')->name('product.cart.delete');
        Route::get('/product/checkout', 'ProductCheckoutPage')->name('product.checkout.page');
        Route::post('/product/order', 'ProductOrder')->name('product.order');
        Route::get('/product/order', 'OrderSuccess')->name('product.ordersuccess.page');
    });

    // Multi Image Route
    Route::controller(MultiImageController::class)->group(function(){
        Route::get('/multiimage-add', 'MultiImageAddPage')->name('multiimage.add.page');
        Route::post('/multiimage/upload', 'MultiImageUpload')->name('multiimage.upload');
        Route::get('/multiimage/delete', 'MultiImageDelete')->name('multiimage.delete');
    
        Route::get('/multiimage-zip', 'MultiImageZip')->name('multiimage.zip');
    });

    // Compress Image Route
    Route::controller(ImageCompressController::class)->group(function(){
        Route::get('/compress', 'index')->name('compress.page');
        Route::get('/compress-add', 'create')->name('compress.add');
        Route::post('/compress/upload', 'store')->name('compress.upload');
        Route::get('/compress/delete', 'delete')->name('compress.delete');
    });
});

// Routes for Facebook login
Route::controller(FacebookLoginController::class)->group(function(){
    Route::get('login/facebook',  'redirectToFacebook')->name('login.facebook');    
    Route::get('login/facebook/callback',  'handleFacebookCallback');    
});

Route::controller(GoogleLoginController::class)->group(function(){
    Route::get('login/google',  'googleLogin')->name('login.facebook');    
    Route::get('auth/google/callback',  'handleGoogleCallback');    
});


@include('admin');
