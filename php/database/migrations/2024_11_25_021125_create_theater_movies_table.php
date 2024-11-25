<?php

use App\Models\Movie;
use App\Models\Theater;
use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

return new class extends Migration
{
    /**
     * Run the migrations.
     */
    public function up(): void
    {
        Schema::create('theater_movies', function (Blueprint $table) {
            $table->id();
            $table->foreignIdFor(Theater::class)->constrained();
            $table->foreignIdFor(Movie::class)->constrained();
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('theater_movies');
    }
};
