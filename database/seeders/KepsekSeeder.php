<?php

namespace Database\Seeders;

use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\Hash;
use App\Models\User;

class KepsekSeeder extends Seeder
{
    public function run(): void
    {
        User::updateOrCreate(
            ['username' => 'kepsek'],
            [
                'name'     => 'Nurul Fadilah',
                'username' => 'kepsek',
                'email'    => 'kepsek@smamuhcilegon.sch.id',
                'role'     => 'kepsek',
                'password' => Hash::make('kepsek123'),
            ]
        );
    }
}
