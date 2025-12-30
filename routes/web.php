<?php

use App\Http\Controllers\AlternatifController;
use App\Http\Controllers\Auth\AuthController;
use App\Http\Controllers\KriteriaController;
use App\Http\Controllers\PenilaianController;
use App\Http\Controllers\SpkController;
use Illuminate\Support\Facades\Route;

Route::get('register', [AuthController::class, 'showRegistrationForm'])->name('register');
Route::post('register', [AuthController::class, 'register']);

Route::get('login', [AuthController::class, 'showLoginForm'])->name('login');
Route::post('login', [AuthController::class, 'login']);

Route::middleware('auth')->group(function() {
    Route::post('logout', [AuthController::class, 'logout'])->name('logout');

    Route::get('/', [SpkController::class, 'dashboard'])->name('dashboard');
    Route::get('/spk-results', [SpkController::class, 'index'])->name('spk.results');

    Route::resource('kriteria', KriteriaController::class);
    Route::resource('alternatif', AlternatifController::class);

    Route::get('penilaian', [PenilaianController::class, 'index'])->name('penilaian.index');
    Route::post('penilaian', [PenilaianController::class, 'store'])->name('penilaian.store');
});
