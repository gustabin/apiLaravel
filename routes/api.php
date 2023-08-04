<?php

use App\Http\Controllers\Api\UserController;
use App\Http\Controllers\Api\TodoController;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Route;

Route::post('signin', [userController::class, 'signin']);
Route::post('login', [userController::class, 'login']);

Route::group(['middleware' => ["auth:sanctum"]], function () {
    // Routes auth
    Route::get('/user-profile', [userController::class, 'userProfile']);
    Route::get('/logout', [userController::class, 'logout']);
});

Route::middleware('auth:sanctum')->get('/user', function (Request $request) {
    return $request->user();
});

Route::resource('todo', TodoController::class)->only([
    'index', 'store', 'show', 'update', 'destroy'
]);

Route::resource('user', UserController::class)->only([
    'login', 'signin'
]);

Route::controller(TodoController::class)->group(function () {
    Route::get('/todos/{id}', 'index');
    Route::post('/todo/{id}', 'store');
    Route::get('/todo/{id}', 'show');
    Route::put('/todo/{id}', 'update');
    Route::delete('/todo/{id}', 'destroy');
});

Route::controller(UserController::class)->group(function () {
    Route::post('/login', 'login');
});
