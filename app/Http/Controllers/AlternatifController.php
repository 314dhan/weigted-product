<?php

namespace App\Http\Controllers;

use App\Http\Requests\StoreAlternatifRequest;
use App\Http\Requests\UpdateAlternatifRequest;
use App\Models\Alternatif;
use Illuminate\Http\RedirectResponse;
use Illuminate\View\View;

class AlternatifController extends Controller
{
    /**
     * Display a listing of the resource.
     */
    public function index(): View
    {
        $alternatifs = Alternatif::all();

        return view('alternatif.index', compact('alternatifs'));
    }

    /**
     * Show the form for creating a new resource.
     */
    public function create(): View
    {
        return view('alternatif.create');
    }

    /**
     * Store a newly created resource in storage.
     */
    public function store(StoreAlternatifRequest $request): RedirectResponse
    {
        Alternatif::create($request->validated());

        return redirect()->route('alternatif.index')->with('success', 'Alternatif berhasil ditambahkan.');
    }

    /**
     * Show the form for editing the specified resource.
     */
    public function edit(Alternatif $alternatif): View
    {
        return view('alternatif.edit', compact('alternatif'));
    }

    /**
     * Update the specified resource in storage.
     */
    public function update(UpdateAlternatifRequest $request, Alternatif $alternatif): RedirectResponse
    {
        $alternatif->update($request->validated());

        return redirect()->route('alternatif.index')->with('success', 'Alternatif berhasil diperbarui.');
    }

    /**
     * Remove the specified resource from storage.
     */
    public function destroy(Alternatif $alternatif): RedirectResponse
    {
        // When an alternative is deleted, the related pivot data in 'penilaian' is also deleted because of the cascade on delete constraint.
        $alternatif->delete();

        return redirect()->route('alternatif.index')->with('success', 'Alternatif berhasil dihapus.');
    }
}
