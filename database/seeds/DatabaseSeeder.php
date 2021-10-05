<?php

use Illuminate\Database\Seeder;

class DatabaseSeeder extends Seeder
{
    /**
     * Seed the application's database.
     *
     * @return void
     */
    public function run()
    {
          $this->call(UsersTableSeeder::class);
          $this->call(RolesTableSeeder::class);
          $this->call(FaqsTableSeeder::class);
          $this->call(CoasTableSeeder::class);
          $this->call(LeaderTableSeeder::class);
        
                
    }
}
