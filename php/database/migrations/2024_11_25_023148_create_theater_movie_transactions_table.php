<?php

use App\Models\TheaterMovie;
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
        Schema::create('theater_movie_transactions', function (Blueprint $table) {
            $table->id();
            $table->foreignIdFor(TheaterMovie::class)->constrained();
            $table->float('sub_total', 2);
            $table->float('sales_tax', 2);
            $table->float('total', 2);
            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('theater_movie_transactions');
    }
};
