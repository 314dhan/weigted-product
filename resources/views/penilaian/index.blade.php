@extends('layouts.app')

@section('title', 'Input Penilaian')

@section('content')
    <h1>Input Penilaian Alternatif</h1>

    <form action="{{ route('penilaian.store') }}" method="POST">
        @csrf
        <table>
            <thead>
                <tr>
                    <th>Alternatif (Guru)</th>
                    @foreach ($kriterias as $kriteria)
                        <th>{{ $kriteria->nama_kriteria }} (Bobot: {{ $kriteria->bobot }})</th>
                    @endforeach
                </tr>
            </thead>
            <tbody>
                @forelse ($alternatifs as $alternatif)
                    <tr>
                        <td><strong>{{ $alternatif->nama_alternatif }}</strong></td>
                        @foreach ($kriterias as $kriteria)
                            <td>
                                <input type="number" name="nilai[{{ $alternatif->id }}][{{ $kriteria->id }}]"
                                       value="{{ $alternatif->kriteria->find($kriteria->id)->pivot->nilai ?? '' }}"
                                       min="0" max="100" step="1" required
                                       style="width: 70px; text-align: center;">
                            </td>
                        @endforeach
                    </tr>
                @empty
                    <tr>
                        <td colspan="{{ $kriterias->count() + 1 }}">
                            Tidak ada data alternatif atau kriteria. Silakan tambah data.
                            <a href="{{ route('alternatif.create') }}">Tambah Alternatif</a> |
                            <a href="{{ route('kriteria.create') }}">Tambah Kriteria</a>
                        </td>
                    </tr>
                @endforelse
            </tbody>
        </table>
        @if ($alternatifs->isNotEmpty() && $kriterias->isNotEmpty())
            <button type="submit" class="btn">Simpan Penilaian</button>
        @endif
    </form>
@endsection
