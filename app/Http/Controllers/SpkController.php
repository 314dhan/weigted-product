<?php

namespace App\Http\Controllers;

use App\Models\Alternatif;
use App\Models\Kriteria;
use Illuminate\View\View;

class SpkController extends Controller
{
    public function index(): View
    {
        $kriterias = Kriteria::all();
        $alternatifs = Alternatif::with('kriteria')->get();

        // Check if there are any criteria or alternatives to prevent division by zero or errors.
        if ($kriterias->isEmpty() || $alternatifs->isEmpty()) {
            return view('spk.index', [
                'kriterias' => $kriterias,
                'alternatifs' => $alternatifs,
                'normalisasiBobot' => [],
                'hasil' => [],
            ]);
        }

        // 1. Normalisasi Bobot
        $totalBobot = $kriterias->sum('bobot');
        $normalisasiBobot = [];
        foreach ($kriterias as $kriteria) {
            $pangkat = $kriteria->bobot / $totalBobot;
            if ($kriteria->atribut === 'cost') {
                $pangkat *= -1;
            }
            $normalisasiBobot[$kriteria->id] = $pangkat;
        }

        // 2. Menghitung Vektor S
        $vektorS = [];
        foreach ($alternatifs as $alternatif) {
            $s = 1;
            foreach ($alternatif->kriteria as $kriteria) {
                // Ensure kriteria_id exists in normalisasiBobot to prevent errors for new kriteria without scores
                $weight = $normalisasiBobot[$kriteria->id] ?? 0;
                $s *= pow($kriteria->pivot->nilai, $weight);
            }
            $vektorS[$alternatif->id] = $s;
        }

        // 3. Menghitung Vektor V (Hasil Akhir)
        $totalVektorS = array_sum($vektorS);
        $vektorV = [];
        // Prevent division by zero if totalVektorS is zero
        if ($totalVektorS != 0) {
            foreach ($vektorS as $alternatif_id => $s) {
                $vektorV[$alternatif_id] = $s / $totalVektorS;
            }
        }

        // 4. Mengurutkan hasil
        arsort($vektorV);

        // Menyiapkan data untuk view
        $hasil = [];
        foreach ($vektorV as $alternatif_id => $v) {
            $hasil[] = [
                'alternatif' => $alternatifs->find($alternatif_id),
                's' => $vektorS[$alternatif_id],
                'v' => $v,
            ];
        }

        return view('spk.index', [
            'kriterias' => $kriterias,
            'alternatifs' => $alternatifs,
            'normalisasiBobot' => $normalisasiBobot,
            'hasil' => $hasil,
        ]);
    }

    public function dashboard(): View
    {
        $totalKriteria = Kriteria::count();
        $totalAlternatif = Alternatif::count();

        return view('dashboard', compact('totalKriteria', 'totalAlternatif'));
    }
}
