<?php

use App\Admin\Http\Controllers\Dashboard\DashboardController;
use Illuminate\Support\Facades\Route;

Route::view('/', 'stores.index');

//Route::middleware('guest:store')->group(function () {
//    Route::controller(App\Store\Http\Controllers\Auth\LoginController::class)
//    ->prefix('/login')
//    ->as('login.')
//    ->group(function(){
//        Route::get('/', 'index')->name('index');
//        Route::post('/', 'login')->name('post');
//    });
//    Route::controller(App\Store\Http\Controllers\Auth\RegisterController::class)
//    ->prefix('/register')
//    ->as('register.')
//    ->group(function(){
//        Route::get('/', 'index')->name('index');
//        Route::post('/', 'register')->name('post');
//    });
//});



Route::group(['middleware' => 'admin.auth.admin:store'], function(){




    //discount
//    Route::controller(App\Store\Http\Controllers\Discount\DiscountController::class)
//        ->prefix('/discounts')
//        ->as('discount.')
//        ->group(function(){
//            Route::get('/add', 'create')->name('create');
//            Route::post('/add', 'store')->name('store');
//            Route::get('/', 'index')->name('index');
//            Route::get('/edit/{id}', 'edit')->name('edit');
//            Route::put('/edit', 'update')->name('update');
//            Route::delete('/delete/{id}', 'delete')->name('delete');
//        });
//        Route::prefix('/discounts')->as('discount.')->group(function () {
//            Route::prefix('/select')->as('select.')->group(function () {
//                Route::get('/search', [App\Store\Http\Controllers\Product\UserSearchSelectController::class, 'selectSearch'])->name('product');
//            });
//        });

//        Route::controller(App\Store\Http\Controllers\Order\OrderController::class)
//        ->prefix('/orders')
//        ->as('order.')
//        ->group(function(){
//            Route::get('/add', 'create')->name('create');
//            Route::post('/add', 'store')->name('store');
//            Route::get('/', 'index')->name('index');
//            Route::get('/edit/{id}', 'edit')->name('edit');
//            Route::put('/edit', 'update')->name('update');
//            Route::put('/refuse/{id}', 'refuse')->name('refuse');
//            Route::put('/accept/{id}', 'accept')->name('accept');
//        });
//        Route::prefix('/orders')->as('order.')->group(function () {
//            Route::controller(App\Store\Http\Controllers\Order\OrderItemController::class)
//                ->as('item.')
//                ->group(function () {
//                    Route::get('/{id}/item', 'index')->name('index');
//                    Route::get('/item/edit/{id}', 'edit')->name('edit');
//                    Route::put('/item/edit', 'update')->name('update');
//                    // Route::post('/item/add', 'store')->name('store');
//                    Route::delete('/{id}/item/delete/{id}', 'delete')->name('delete');
//                });
//        });

        //product
//        Route::controller(App\Store\Http\Controllers\Product\ProductController::class)
//        ->prefix('/products')
//        ->as('product.')
//        ->group(function(){
//            Route::get('/add', 'create')->name('create');
//            Route::post('/add', 'store')->name('store');
//            Route::get('/', 'index')->name('index');
//            Route::get('/edit/{id}', 'edit')->name('edit');
//            Route::put('/edit', 'update')->name('update');
//            Route::delete('/delete/{id}', 'delete')->name('delete');
//            Route::get('/draft/{id}', 'draft')->name('draft');
//            Route::post('/allupload', 'allupload')->name('allupload');
//        });
//        Route::controller(App\Store\Http\Controllers\Product\ToppingController::class)
//        ->prefix('/toppings')
//        ->as('topping.')
//        ->group(function(){
//            Route::get('/add', 'create')->name('create');
//            Route::post('/add', 'store')->name('store');
//            Route::get('/', 'index')->name('index');
//            Route::get('/edit/{id}', 'edit')->name('edit');
//            Route::put('/edit', 'update')->name('update');
//            Route::delete('/delete/{id}', 'delete')->name('delete');
//
//
//        });
        // Route::controller(App\Store\Http\Controllers\Product\ToppingController::class)
        //     ->prefix('/products')
        //     ->as('item.')
        //     ->group(function () {
        //         Route::get('/{topping_id}/item/add', 'create')->name('create');
        //         Route::get('/{topping_id}/item', 'index')->name('index');
        //         Route::get('/item/edit/{id}', 'edit')->name('edit');
        //         Route::put('/item/edit', 'update')->name('update');
        //         Route::post('/item/add', 'store')->name('store');
        //         Route::delete('/{topping_id}/item/delete/{id}', 'delete')->name('delete');
        //     });
    //auth
//    Route::controller(App\Store\Http\Controllers\Auth\ProfileController::class)
//    ->prefix('/profile')
//    ->as('profile.')
//    ->group(function(){
//        Route::get('/', 'index')->name('index');
//        Route::put('/', 'update')->name('update');
//    });
//
//    Route::controller(App\Store\Http\Controllers\Auth\ChangePasswordController::class)
//    ->prefix('/password')
//    ->as('password.')
//    ->group(function(){
//        Route::get('/', 'index')->name('index');
//        Route::put('/', 'update')->name('update');
//    });

    Route::get('/dashboard', [DashboardController::class, 'index'])->name('dashboard');

//    Route::post('/logout', [App\Store\Http\Controllers\Auth\LogoutController::class, 'logout'])->name('logout');
});

