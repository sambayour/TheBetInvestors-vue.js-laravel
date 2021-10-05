<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateCommunityNewsTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('community_news', function (Blueprint $table) {
            $table->increments('id');
            $table->integer('user_id');            
            $table->string('title');
            $table->text('body');
            $table->string('image');
            $table->boolean('status');
            $table->integer('approval_id');
            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('community_news');
    }
}
