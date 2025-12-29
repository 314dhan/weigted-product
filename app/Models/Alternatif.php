<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\Relations\BelongsToMany;

class Alternatif extends Model
{
    use HasFactory;

    protected $table = 'alternatif';

    protected $fillable = [
        'nama_alternatif',
    ];

    public function kriteria(): BelongsToMany
    {
        return $this->belongsToMany(Kriteria::class, 'penilaian')
            ->withPivot('nilai')
            ->withTimestamps();
    }
}
