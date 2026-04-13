<?php

namespace App\Http\Middleware;

use Closure;
use Illuminate\Http\Request;
use Symfony\Component\HttpFoundation\Response;

class KepsekMiddleware
{
    /**
     * Hanya izinkan user dengan role 'kepsek' mengakses route ini.
     */
    public function handle(Request $request, Closure $next): Response
    {
        if (!auth()->check() || auth()->user()->role !== 'kepsek') {
            abort(403, 'Akses ditolak. Halaman ini khusus untuk Kepala Sekolah.');
        }

        return $next($request);
    }
}
