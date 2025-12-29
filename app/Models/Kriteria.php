<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\Relations\BelongsToMany;

class Kriteria extends Model
{
    use HasFactory;

    protected $table = 'kriteria';

    protected $fillable = [
        'nama_kriteria',
        'bobot',
        'atribut',
    ];

    public function alternatif(): BelongsToMany
    {
        return $this->belongsToMany(Alternatif::class, 'penilaian')
            ->withPivot('nilai')
            ->withTimestamps();
    }
}
