<?php

namespace App\Http\Middleware;

use Closure;
use Illuminate\Http\Request;
use Symfony\Component\HttpFoundation\Response;

class AdminMiddleware
{
    /**
     * Hanya izinkan user dengan role 'admin' mengakses route ini.
     * Kepsek & guest yang mencoba akses halaman admin akan diarahkan ke hasil SPK.
     */
    public function handle(Request $request, Closure $next): Response
    {
        if (!auth()->check() || auth()->user()->role !== 'admin') {
            return redirect()->route('spk.results')
                ->with('info', 'Anda hanya memiliki akses ke halaman Hasil SPK.');
        }

        return $next($request);
    }
}
