<?php

use Illuminate\Support\Facades\Route;
// Admin
use App\Http\Controllers\AdminController;
use App\Http\Controllers\BrandController;
use App\Http\Controllers\CategoryController;

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


// ==========================================
// ==========================================
// ==========================================

// Route::prefix('admin')->middleware(['adminLoginCheck'])->group(function(){
Route::prefix('admin')->group(function(){
    Route::controller(AdminController::class)->group(function(){
        Route::get('/', 'index')->name('admin.dashboard');
    });
    // Brand Route 
    Route::controller(BrandController::class)->group(function(){
        Route::get('/brands', 'index')->name('brand.list');
        Route::get('/brand-add', 'create')->name('brand.create');
        Route::post('/brand-store', 'store')->name('brand.store');
        Route::get('/brand-show/{id}', 'show')->name('brand.show');
        Route::post('/brand-update/{id}', 'update')->name('brand.update');
        Route::get('/brand-delete/{id}', 'destroy')->name('brand.delete');
    });
    // Category Route 
    Route::controller(CategoryController::class)->group(function(){
        Route::get('/categories', 'index')->name('category.list');
        Route::get('/category-add', 'create')->name('category.create');
        Route::post('/category-store', 'store')->name('category.store');
        Route::get('/category-show/{id}', 'show')->name('category.show');
        Route::post('/category-update/{id}', 'update')->name('category.update');
        Route::get('/category-delete/{id}', 'destroy')->name('category.delete');
    });
});


