@extends('layouts.app')

@section('title', 'Hasil SPK Weighted Product')

@section('content')
    <h1>Hasil Perhitungan SPK Weighted Product</h1>

    <h2>1. Kriteria dan Bobot</h2>
    <table>
        <thead>
            <tr>
                <th>Nama Kriteria</th>
                <th>Atribut</th>
                <th>Bobot (W)</th>
                <th>Bobot Ternormalisasi (w)</th>
            </tr>
        </thead>
        <tbody>
            @forelse ($kriterias as $kriteria)
            <tr>
                <td>{{ $kriteria->nama_kriteria }}</td>
                <td><span class="badge {{ $kriteria->atribut }}">{{ ucfirst($kriteria->atribut) }}</span></td>
                <td>{{ $kriteria->bobot }}</td>
                <td>{{ number_format($normalisasiBobot[$kriteria->id] ?? 0, 4) }}</td>
            </tr>
            @empty
            <tr>
                <td colspan="4">Data kriteria belum ada. Silakan tambah <a href="{{ route('kriteria.create') }}">di sini</a>.</td>
            </tr>
            @endforelse
        </tbody>
    </table>

    <h2>2. Data Penilaian Alternatif</h2>
    <table>
        <thead>
            <tr>
                <th>Alternatif (Guru)</th>
                @foreach ($kriterias as $kriteria)
                    <th>{{ $kriteria->nama_kriteria }} (C{{$loop->iteration}})</th>
                @endforeach
            </tr>
        </thead>
        <tbody>
            @forelse ($alternatifs as $alternatif)
            <tr>
                <td><strong>{{ $alternatif->nama_alternatif }}</strong></td>
                @foreach ($kriterias as $kriteria)
                    <td>{{ $alternatif->kriteria->find($kriteria->id)->pivot->nilai ?? 'N/A' }}</td>
                @endforeach
            </tr>
            @empty
            <tr>
                <td colspan="{{ $kriterias->count() + 1 }}">Data alternatif atau penilaian belum ada.</td>
            </tr>
            @endforelse
        </tbody>
    </table>

    <h2>3. Hasil Perhitungan dan Peringkat</h2>
    <button id="print-pdf-button" class="btn">Print ke PDF</button>
    <table id="hasil-perhitungan-table">
        <thead>
            <tr>
                <th>Peringkat</th>
                <th>Alternatif (Guru)</th>
                <th>Nilai Vektor S</th>
                <th>Nilai Vektor V (Preferensi)</th>
            </tr>
        </thead>
        <tbody>
            @forelse ($hasil as $item)
            <tr class="{{ $loop->first ? 'rank-1' : '' }}">
                <td><strong>#{{ $loop->iteration }}</strong></td>
                <td><strong>{{ $item['alternatif']->nama_alternatif }}</strong></td>
                <td>{{ number_format($item['s'], 4) }}</td>
                <td>{{ number_format($item['v'], 4) }}</td>
            </tr>
            @empty
            <tr>
                <td colspan="4">Tidak ada hasil untuk ditampilkan. Pastikan data kriteria, alternatif, dan penilaian sudah lengkap.</td>
            </tr>
            @endforelse
        </tbody>
    </table>

@endsection

<script src="https://cdnjs.cloudflare.com/ajax/libs/html2pdf.js/0.9.3/html2pdf.bundle.min.js"></script>
<script>
    document.addEventListener('DOMContentLoaded', function() {
        const printPdfButton = document.getElementById('print-pdf-button');
        if (printPdfButton) {
            printPdfButton.addEventListener('click', function() {
                const element = document.getElementById('hasil-perhitungan-table');
                const opt = {
                    margin: 10,
                    filename: 'hasil_perhitungan_spk.pdf',
                    image: { type: 'jpeg', quality: 0.98 },
                    html2canvas: { scale: 2 },
                    jsPDF: { unit: 'mm', format: 'a4', orientation: 'portrait' }
                };
                html2pdf().set(opt).from(element).save();
            });
        }
    });
</script>
