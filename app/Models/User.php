<?php

namespace App\Models;

// use Illuminate\Contracts\Auth\MustVerifyEmail;
use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Foundation\Auth\User as Authenticatable;
use Illuminate\Notifications\Notifiable;

class User extends Authenticatable
{
    /** @use HasFactory<\Database\Factories\UserFactory> */
    use HasFactory, Notifiable;

    /**
     * The attributes that are mass assignable.
     *
     * @var list<string>
     */
    protected $fillable = [
        'name',
        'username',
        'email',
        'password',
        'role',
    ];

    public function isKepsek(): bool
    {
        return $this->role === 'kepsek';
    }

    public function isAdmin(): bool
    {
        return $this->role === 'admin';
    }

    public function isGuest(): bool
    {
        return $this->role === 'guest';
    }

    /**
     * Kepsek dan guest sama-sama hanya bisa lihat hasil SPK.
     */
    public function isViewOnly(): bool
    {
        return in_array($this->role, ['kepsek', 'guest']);
    }

    /**
     * The attributes that should be hidden for serialization.
     *
     * @var list<string>
     */
    protected $hidden = [
        'password',
        'remember_token',
    ];

    /**
     * Get the attributes that should be cast.
     *
     * @return array<string, string>
     */
    protected function casts(): array
    {
        return [
            'email_verified_at' => 'datetime',
            'password' => 'hashed',
        ];
    }
}
