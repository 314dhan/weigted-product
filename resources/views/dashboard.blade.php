@extends('layouts.app')

@section('title', 'Dashboard')

@section('content')
    <h1>Dashboard SPK</h1>

    <div style="display: flex; gap: 20px; margin-top: 30px;">
        <div style="flex: 1; padding: 20px; border: 1px solid #ddd; border-radius: 8px; background-color: #f9f9f9; text-align: center;">
            <h2>Jumlah Kriteria</h2>
            <p style="font-size: 3em; font-weight: bold; color: #3498db;">{{ $totalKriteria }}</p>
            <a href="{{ route('kriteria.index') }}" class="btn btn-sm">Lihat Kriteria</a>
        </div>

        <div style="flex: 1; padding: 20px; border: 1px solid #ddd; border-radius: 8px; background-color: #f9f9f9; text-align: center;">
            <h2>Jumlah Alternatif (Guru)</h2>
            <p style="font-size: 3em; font-weight: bold; color: #2ecc71;">{{ $totalAlternatif }}</p>
            <a href="{{ route('alternatif.index') }}" class="btn btn-sm">Lihat Alternatif</a>
        </div>
    </div>

    <h2 style="margin-top: 40px;">Sekilas SPK Weighted Product</h2>
    <p>Aplikasi ini membantu Anda melakukan penilaian kinerja guru menggunakan metode Weighted Product (WP).</p>
    <ul>
        <li><a href="{{ route('spk.results') }}">Hasil SPK</a>: Menampilkan hasil perhitungan dan peringkat guru berdasarkan kriteria yang ada.</li>
        <li><a href="{{ route('penilaian.index') }}">Input Nilai</a>: Untuk memasukkan atau memperbarui nilai penilaian setiap guru untuk setiap kriteria.</li>
        <li><a href="{{ route('kriteria.index') }}">Data Kriteria</a>: Mengelola daftar kriteria penilaian (tambah, edit, hapus) beserta bobot dan atributnya.</li>
        <li><a href="{{ route('alternatif.index') }}">Data Alternatif</a>: Mengelola daftar guru yang akan dinilai (tambah, edit, hapus).</li>
    </ul>
@endsection
