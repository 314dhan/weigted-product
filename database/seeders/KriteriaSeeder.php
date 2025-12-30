<?php

namespace Database\Seeders;

use App\Models\Kriteria;
use Illuminate\Database\Seeder;

class KriteriaSeeder extends Seeder
{
    /**
     * Run the database seeds.
     */
    public function run(): void
    {
        $kriteria = [
            [
                'nama_kriteria' => 'Kompetensi Pedagogik',
                'bobot' => 4,
                'atribut' => 'benefit',
            ],
            [
                'nama_kriteria' => 'Kompetensi Profesional',
                'bobot' => 5,
                'atribut' => 'benefit',
            ],
            [
                'nama_kriteria' => 'Kompetensi Kepribadian',
                'bobot' => 4,
                'atribut' => 'benefit',
            ],
            [
                'nama_kriteria' => 'Kompetensi Sosial',
                'bobot' => 3,
                'atribut' => 'benefit',
            ],
        ];

        foreach ($kriteria as $data) {
            Kriteria::create($data);
        }
    }
}
