<?php

use Illuminate\Database\Seeder;

class RolesTableSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        $this->drop();
        $roles = [
            ['role' => 'Super Admin'],['role' => 'Officer']
        ];
        DB::table('roles')->insert($roles);
    }
    public function drop(){
        DB::table('roles')->delete();
    }
}
