<?php

namespace Database\Seeders;

use App\Models\Alternatif;
use App\Models\Kriteria;
use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;

class PenilaianSeeder extends Seeder
{
    /**
     * Run the database seeds.
     */
    public function run(): void
    {
        $alternatifs = Alternatif::all();
        $kriterias = Kriteria::all();

        // Data penilaian: [alternatif_id => [kriteria_id => nilai, ...], ...]
        $penilaian = [
            1 => [1 => 80, 2 => 85, 3 => 90, 4 => 78], // Penilaian untuk Siti
            2 => [1 => 92, 2 => 78, 3 => 88, 4 => 82], // Penilaian untuk Budi
            3 => [1 => 75, 2 => 80, 3 => 92, 4 => 85], // Penilaian untuk Ani
            4 => [1 => 88, 2 => 90, 3 => 85, 4 => 88], // Penilaian untuk Joko
        ];

        foreach ($penilaian as $alternatif_id => $kriteria_penilaian) {
            $alternatif = Alternatif::find($alternatif_id);
            foreach ($kriteria_penilaian as $kriteria_id => $nilai) {
                $alternatif->kriteria()->attach($kriteria_id, ['nilai' => $nilai]);
            }
        }
    }
}
