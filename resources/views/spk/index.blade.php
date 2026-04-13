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
    <button id="print-pdf-button" class="btn">🖨️ Cetak Laporan PDF</button>

    {{-- ================================================================ --}}
    {{-- Konten PDF — kop & ttd disembunyikan di layar, tampil saat cetak --}}
    {{-- ================================================================ --}}
    <div id="pdf-content">

        {{-- KOP SURAT --}}
        <div id="kop-surat" style="display:none;">
            <table style="width:100%; border-collapse:collapse; border:none;">
                <tr>
                    <td style="width:90px; text-align:center; vertical-align:middle; border:none; padding:4px 8px;">
                        <img src="{{ asset('images/smamy.png') }}" alt="Logo Sekolah" style="height:80px;">
                    </td>
                    <td style="text-align:center; vertical-align:middle; border:none; padding:4px 8px;">
                        <div style="font-size:18px; font-weight:900; text-transform:uppercase; letter-spacing:1px; color:#1a1a2e;">SMA MUHAMMADIYAH CILEGON</div>
                        <div style="font-size:11px; color:#444; margin-top:3px;">Jl. Perintis No.3, RW.Link. Rokal, Jombang, Kec. Jombang, Kota Cilegon, Banten 42411</div>
                        <div style="font-size:11px; color:#444; margin-top:2px;">Telp: 394953 &nbsp;|&nbsp; Email: smamuhammadiyah1cilegon@gmail.com</div>
                    </td>
                </tr>
            </table>
            <div style="border-top:4px solid #2c3e50; border-bottom:1.5px solid #2c3e50; margin:8px 0;"></div>
            <div style="text-align:center; font-size:14px; font-weight:800; text-transform:uppercase; margin-top:12px; letter-spacing:0.5px;">LAPORAN HASIL SELEKSI GURU TERBAIK</div>
            <div style="text-align:center; font-size:12px; margin-top:2px;">Menggunakan Metode Weighted Product (WP)</div>
            <div style="text-align:center; font-size:11px; color:#555; margin-top:2px; margin-bottom:16px;">Tahun Ajaran {{ date('Y') }}/{{ date('Y') + 1 }}</div>
        </div>
        {{-- END KOP SURAT --}}

        {{-- TABEL HASIL --}}
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

        {{-- KOLOM TANDA TANGAN --}}
        <div id="ttd-wrapper" style="display:none; margin-top:40px; text-align:right;">
            <div style="display:inline-block; text-align:center; min-width:220px;">
                <div style="font-size:12px; margin-bottom:4px;">Cilegon, {{ \Carbon\Carbon::now()->translatedFormat('d F Y') }}</div>
                <div style="font-size:12px; font-weight:bold;">Kepala Sekolah</div>
                <div style="height:70px;"></div>
                <div style="font-size:13px; font-weight:900; text-decoration:underline;">Nurul Fadilah</div>
                <div style="font-size:11px; margin-top:2px; color:#555;">NIP. ___________________</div>
            </div>
        </div>
        {{-- END KOLOM TANDA TANGAN --}}

    </div>
    {{-- END PDF CONTENT --}}

@endsection

<script src="https://cdnjs.cloudflare.com/ajax/libs/html2pdf.js/0.9.3/html2pdf.bundle.min.js"></script>
<script>
    document.addEventListener('DOMContentLoaded', function () {
        const printBtn = document.getElementById('print-pdf-button');
        if (!printBtn) return;

        printBtn.addEventListener('click', function () {
            // 1. Tampilkan kop & ttd
            document.getElementById('kop-surat').style.display  = 'block';
            document.getElementById('ttd-wrapper').style.display = 'block';

            // 2. Beri jeda 300ms agar browser selesai render sebelum di-screenshot
            setTimeout(function () {
                const element = document.getElementById('pdf-content');
                const opt = {
                    margin:      [10, 10, 10, 10],
                    filename:    'laporan_hasil_spk.pdf',
                    image:       { type: 'jpeg', quality: 0.98 },
                    html2canvas: { scale: 2, useCORS: true, logging: false },
                    jsPDF:       { unit: 'mm', format: 'a4', orientation: 'portrait' }
                };

                html2pdf().set(opt).from(element).save().then(function () {
                    // 3. Sembunyikan lagi setelah PDF selesai di-generate
                    document.getElementById('kop-surat').style.display  = 'none';
                    document.getElementById('ttd-wrapper').style.display = 'none';
                });
            }, 300);
        });
    });
</script>
