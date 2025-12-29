<?php

use App\Http\Controllers\AlternatifController;
use App\Http\Controllers\KriteriaController;
use App\Http\Controllers\PenilaianController;
use App\Http\Controllers\SpkController;
use Illuminate\Support\Facades\Route;

Route::get('/', [SpkController::class, 'dashboard'])->name('dashboard');
Route::get('/spk-results', [SpkController::class, 'index'])->name('spk.results');

Route::resource('kriteria', KriteriaController::class);
Route::resource('alternatif', AlternatifController::class);

Route::get('penilaian', [PenilaianController::class, 'index'])->name('penilaian.index');
Route::post('penilaian', [PenilaianController::class, 'store'])->name('penilaian.store');
