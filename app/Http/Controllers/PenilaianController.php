<?php

namespace App\Http\Controllers;

use App\Models\Alternatif;
use App\Models\Kriteria;
use Illuminate\Http\RedirectResponse;
use Illuminate\Http\Request;
use Illuminate\View\View;

class PenilaianController extends Controller
{
    /**
     * Display a listing of the resource.
     */
    public function index(): View
    {
        $alternatifs = Alternatif::with('kriteria')->get();
        $kriterias = Kriteria::all();

        return view('penilaian.index', compact('alternatifs', 'kriterias'));
    }

    /**
     * Store a newly created resource in storage.
     */
    public function store(Request $request): RedirectResponse
    {
        $validatedData = $request->validate([
            'nilai' => ['required', 'array'],
            'nilai.*.*' => ['required', 'numeric', 'min:0', 'max:100'],
        ]);

        foreach ($validatedData['nilai'] as $alternatif_id => $kriteria_scores) {
            $alternatif = Alternatif::find($alternatif_id);
            if ($alternatif) {
                foreach ($kriteria_scores as $kriteria_id => $nilai) {
                    // Attach or update the pivot table
                    $alternatif->kriteria()->syncWithoutDetaching([
                        $kriteria_id => ['nilai' => $nilai]
                    ]);
                }
            }
        }

        return redirect()->route('penilaian.index')->with('success', 'Penilaian berhasil disimpan.');
    }
}
