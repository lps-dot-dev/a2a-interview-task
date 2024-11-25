<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\Relations\BelongsTo;
use Illuminate\Database\Eloquent\Relations\HasMany;

/**
 * @property int id
 * @property int movie_id
 * @property int theater_id
 */
class TheaterMovie extends Model
{
    /**
     * Indicates if the model should be timestamped.
     *
     * @var bool
     */
    public $timestamps = false;

    public function movie(): BelongsTo
    {
        return $this->belongsTo(Movie::class);
    }

    public function theater(): BelongsTo
    {
        return $this->belongsTo(Theater::class);
    }

    public function transactions(): HasMany
    {
        return $this->hasMany(TheaterMovieTransaction::class);
    }
}
