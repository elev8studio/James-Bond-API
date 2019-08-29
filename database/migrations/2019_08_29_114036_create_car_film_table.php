<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateCarFilmTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('car_film', function (Blueprint $table) {
            $table->increments("id");
            $table->integer("car_id")->unsigned();
            $table->integer("film_id")->unsigned();
            
            $table->foreign("car_id")->references("id")->on("cars")->onDelete("cascade");
            $table->foreign("film_id")->references("id")->on("films")->onDelete("cascade");
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::drop('car_film');
    }
}
