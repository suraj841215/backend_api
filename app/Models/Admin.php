<?php

namespace App\Models;

use Illuminate\Foundation\Auth\User as Authenticatable;
use Laravel\Sanctum\HasApiTokens;

class Admin extends Authenticatable
{
    use HasApiTokens;

    protected $guard = 'admin';

    protected $fillable = [
        'name',
        'email',
        'mobile',
        'username',
        'password',
        'token',
    ];
}
