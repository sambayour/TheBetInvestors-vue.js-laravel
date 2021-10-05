<?php

use Illuminate\Database\Seeder;

class UsersTableSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        DB::table('users')->insert([
            'role_id' => 1,
            'full_name' => 'NAFC Administrator',
            'service_number' => 'super_admin',
            'rank' => 'Super Man',
            'unit' => 'Super General',
            'date_promotion' => '2019-10-11',
            'salary_step' => 'First step',
            'email' => 'hello@zercomsystems.com',
            'admin_right' => 1,
            'password' => bcrypt('zercom_123')
        ]); 
        DB::table('users')->insert([
            'role_id' => 2,
            'full_name' => 'NAFC Officer 1',
            'service_number' => 'officer',
            'rank' => 'Main officer',
            'unit' => 'Officer',
            'date_promotion' => '2019-10-20',
            'salary_step' => 'Third step',
            'email' => 'chibuike@zercomsystems.com',
            'password' => bcrypt('zercom')
        ]); 
    }
}
