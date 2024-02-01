<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

return new class extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('users', function (Blueprint $table) {
            $table->id();
            $table->string("category");
            $table->string("name_of_entity"); 
            $table->string("rep_name");
            $table->integer('mobile')->unique();
            $table->integer("alternate_mobile");
            $table->string("email")->unique();
            $table->string("gst_no");
            $table->string("pan_no");
            $table->string("country");
            $table->string("state");
            $table->string("district");
            $table->integer("pincode");
            $table->string("address");
            $table->string('password');
            $table->boolean('is_seller')->default(0);
            $table->boolean('status')->default(0);
            $table->rememberToken();
            $table->timestamps();
            $table->softDeletes();

        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('users');
    }
};
