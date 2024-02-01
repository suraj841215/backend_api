<?php

use App\Http\Controllers\API\V1\Admin\Authentication;
use App\Http\Controllers\API\V1\QuotesController;
use App\Http\Controllers\API\V1\WebController;
use Illuminate\Support\Facades\Route;


/*
|--------------------------------------------------------------------------
| API Routes
|--------------------------------------------------------------------------
|
| Here is where you can register API routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| is assigned the "api" middleware group. Enjoy building your API!
|
*/


Route::post('login', [Authentication::class, 'admin_login']);
Route::get('getdata',[WebController::class,'getData']);

Route::get('unauthenticate', function () {
    return response()->json([
        'status' => false,
        'msg' => 'Unauthenticated',
        'data' => ''
    ]);
})->name('unauthenticate');



Route::middleware(['auth:sanctum'])->group(function () {

    Route::controller(Authentication::class)->group(function () {
        Route::get('logout', 'admin_logout');
        Route::group(['prefix' => 'profile'], function () {
            Route::get('get', 'getProfile');
            Route::post('change-password', 'changePassword');
        });
    });

    Route::controller(QuotesController::class)->group(function () {
        Route::group(['prefix' => 'quotes'], function () {
            Route::post('add','store');
            Route::post('update', 'update');
            Route::post('delete','delete');
        });
    });
});

