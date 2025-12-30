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

    <div class="card mt-5">
        <div class="card-header">
            <h4>Rumus Perhitungan Weighted Product (WP)</h4>
        </div>
        <div class="card-body">
            <p>Metode Weighted Product (WP) menggunakan perkalian untuk menghubungkan rating atribut, di mana rating setiap atribut harus dipangkatkan terlebih dahulu dengan bobot atribut yang bersangkutan.</p>

            <h5 class="mt-4">Langkah 1: Normalisasi Bobot</h5>
            <p>Bobot untuk setiap kriteria dinormalisasi untuk memastikan total bobot adalah 1. Pangkat bernilai negatif jika atribut kriteria adalah 'cost'.</p>
            <code>Wj = wj / Σwi</code>
            <p class="mt-2">
                Dimana: <br>
                - <code>Wj</code> = Bobot ternormalisasi dari kriteria ke-j <br>
                - <code>wj</code> = Bobot awal dari kriteria ke-j <br>
                - <code>Σwi</code> = Jumlah total dari semua bobot kriteria
            </p>

            <hr class="my-4">

            <h5>Langkah 2: Menghitung Nilai Vektor S</h5>
            <p>Nilai preferensi untuk setiap alternatif (S) dihitung dengan mengalikan semua nilai kriteria yang telah dipangkatkan dengan bobot ternormalisasi.</p>
            <code>Si = Π (x_ij ^ Wj)</code>
            <p class="mt-2">
                Dimana: <br>
                - <code>Si</code> = Nilai Vektor S untuk alternatif ke-i <br>
                - <code>Π</code> = Simbol untuk perkalian (Product) <br>
                - <code>x_ij</code> = Nilai rating alternatif ke-i pada kriteria ke-j <br>
                - <code>Wj</code> = Bobot ternormalisasi (bernilai negatif jika kriteria adalah 'cost').
            </p>

            <hr class="my-4">

            <h5>Langkah 3: Menghitung Nilai Akhir (Vektor V)</h5>
            <p>Nilai akhir setiap alternatif (V) dihitung dengan membagi nilai S masing-masing alternatif dengan total dari semua nilai S. Alternatif dengan nilai V tertinggi adalah yang terbaik.</p>
            <code>Vi = Si / ΣSj</code>
            <p class="mt-2">
                Dimana: <br>
                - <code>Vi</code> = Nilai preferensi akhir untuk alternatif ke-i <br>
                - <code>Si</code> = Nilai Vektor S untuk alternatif ke-i <br>
                - <code>ΣSj</code> = Jumlah total dari semua nilai Vektor S
            </p>
        </div>
    </div>
@endsection
