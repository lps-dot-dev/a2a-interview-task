<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\Relations\BelongsToMany;
use Illuminate\Database\Eloquent\Relations\HasManyThrough;

/**
 * @property int id
 * @property string name
 * @property string genre
 * @property string plot
 * @property string language
 * @property string country
 * @property string rating
 * @property DateTimeInterface release_date
 * @property int runtime
 * @property string poster
 * @property DateTimeInterface created_at
 * @property DateTimeInterface updated_at
 */
class Movie extends Model
{
    public function theaters(): BelongsToMany
    {
        return $this->belongsToMany(Theater::class);
    }

    public function transactions(): HasManyThrough
    {
        return $this->hasManyThrough(TheaterMovieTransaction::class, TheaterMovie::class);
    }
}
