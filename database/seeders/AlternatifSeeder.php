<?php

namespace Database\Seeders;

use App\Models\Alternatif;
use Illuminate\Database\Seeder;

class AlternatifSeeder extends Seeder
{
    /**
     * Run the database seeds.
     */
    public function run(): void
    {
        $alternatif = [
            ['nama_alternatif' => 'Siti'],
            ['nama_alternatif' => 'Budi'],
            ['nama_alternatif' => 'Ani'],
            ['nama_alternatif' => 'Joko'],
        ];

        foreach ($alternatif as $data) {
            Alternatif::create($data);
        }
    }
}
