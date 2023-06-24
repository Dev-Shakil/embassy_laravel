<?php


use App\Http\Controllers\ViewController;
use App\Http\Controllers\UserController;
use Illuminate\Support\Facades\Route;

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/

Route::get('/', function () {
    return view('welcome');
});

#verification route
Route::any('/signup', [ViewController::class, 'signup'])->name('signup');
Route::any('/login', [ViewController::class, 'login'])->name('login');

#user routes
Route::any('/user/index', [UserController::class, 'index'])->name('user/index');
Route::any('/user/visaadd/{id}', [UserController::class, 'visa_add'])->name('user/visaadd');
// Route::post('/user/addcandidate', 'CandidateController@addCandidate')->name('user.addcandidate');