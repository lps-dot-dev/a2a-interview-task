<?php

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
        Schema::create('movies', function (Blueprint $table) {
            $table->id();
            $table->string('name');
            $table->string('genre')->nullable(); // Could also possibly be a separate table for genres
            $table->text('plot')->nullable();
            $table->string('language')->nullable();
            $table->string('country')->nullable();
            $table->string('rating')->nullable(); // This can be `rating_id` for a ratings table, but seems excessive right now.
            $table->date('release_date');
            $table->integer('runtime')->nullable();
            $table->text('poster')->nullable();
            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('movies');
    }
};
