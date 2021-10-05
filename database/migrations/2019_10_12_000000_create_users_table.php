<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateUsersTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('users', function (Blueprint $table) {
            $table->increments('id');
            $table->unsignedBigInteger('role_id')->index()->default(2);
            //$table->foreign('role_id')->references('id')->on('roles')->onDelete('cascade');
            $table->string('service_number')->unique();
            $table->string('rank');
            $table->string('full_name');
            $table->string('unit');
            $table->date('date_promotion');
            $table->string('salary_step');
            $table->string('ucommand');
            $table->string('clerk');
            $table->dateTime('last_login')->nullable();
            $table->ipAddress('last_ip')->nullable();
            $table->string('phone');
            $table->string('email')->unique();
            $table->timestamp('email_verified_at')->nullable();
            $table->string('password');
            $table->boolean('admin_right')->default(false);
            $table->string('image')->default('');
            $table->rememberToken();
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
        //$table->dropForeign('user_roles_id_foreign');
        Schema::dropIfExists('users');
    }
}
