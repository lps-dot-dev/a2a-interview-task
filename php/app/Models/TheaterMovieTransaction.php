<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\Relations\HasOneThrough;

/**
 * @property int id
 * @property int theater_movie_id
 * @property float sub_total
 * @property float sales_tax
 * @property float total
 * @property DateTimeInterface created_at
 * @property DateTimeInterface updated_at
 */
class TheaterMovieTransaction extends Model
{
    public function movie(): HasOneThrough
    {
        return $this->hasOneThrough(Movie::class, TheaterMovie::class);
    }

    public function theater(): HasOneThrough
    {
        return $this->hasOneThrough(Theater::class, TheaterMovie::class);
    }
}
