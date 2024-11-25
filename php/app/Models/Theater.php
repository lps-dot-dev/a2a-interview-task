<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\Relations\BelongsToMany;
use Illuminate\Database\Eloquent\Relations\HasManyThrough;

/**
 * @property int id
 * @property string name
 * @property string address
 * @property DateTimeInterface created_at
 * @property DateTimeInterface updated_at
 */
class Theater extends Model
{
    public function movies(): BelongsToMany
    {
        return $this->belongsToMany(Movie::class);
    }

    public function transactions(): HasManyThrough
    {
        return $this->hasManyThrough(TheaterMovieTransaction::class, TheaterMovie::class);
    }
}
