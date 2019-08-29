<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class AddBondToFilms extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::table('films', function (Blueprint $table) {
            // link up to bonds table
            $table->integer("bond_id")->unsigned()->nullable(); // nullable() means we can add new columns to a table with existing data without adding data to the new column on existing rows 
            $table->foreign("bond_id")->references("id")->on("bonds")->onDelete("cascade");
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::table('films', function (Blueprint $table) {
            $table->dropColumn('bond_id');
        });
    }
}
