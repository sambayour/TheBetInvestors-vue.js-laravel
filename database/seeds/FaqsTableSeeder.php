<?php

use Illuminate\Database\Seeder;

class FaqsTableSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        $this->drop();
        DB::table('faqs')->insert([
            'title' => 'What is e-naps? ',
            'body' => 'Electronic Nigerian Army Payroll System ',
            'date_time' => '2019-10-11 00:00:00'
        ]); 
        DB::table('faqs')->insert([
            'title' => 'How do I access my e-naps email?  ',
            'body' => 'By clicking on the icon showing “ACCESS YOUR PAY-SLIPS” on the website homepage. This will display another page. Key in your login credentials. (Your “ Username” and “Password”) ',
            'date_time' => '2019-10-11 00:00:00'
        ]); 
        DB::table('faqs')->insert([
            'title' => 'Do I need to put the oblique (/) sign when typing ...',
            'body' => 'You don’t need to put the oblique (/) sign. ',
            'date_time' => '2019-10-11 00:00:00'
        ]); 
        DB::table('faqs')->insert([
            'title' => 'Does my username have any format guiding it?',
            'body' => 'Yes, the format is: Your Surname.Service nos without the oblique@na.enaps.com.ng. ',
            'date_time' => '2019-10-11 00:00:00'
        ]); 
        DB::table('faqs')->insert([
            'title' => 'Is my username the same thing as my e-mail address?',
            'body' => 'Yes, the username is the same thing as the e-mail address. ',
            'date_time' => '2019-10-11 00:00:00'
        ]); 
        DB::table('faqs')->insert([
            'title' => 'Is my username or password case sensitive? ',
            'body' => 'The username is NOT case sensitive but the password is case sensitive.',
            'date_time' => '2019-10-11 00:00:00'
        ]); 
        DB::table('faqs')->insert([
            'title' => 'WWho do I contact if I don’t see my payslip in my inbox? ',
            'body' => 'Call the number 09075768788 or send an email to support@thebetinvestors.com ',
            'date_time' => '2019-10-11 00:00:00'
        ]); 
        DB::table('faqs')->insert([
            'title' => 'Who do I contact if I have any problems accessing ...',
            'body' => 'Call the number 09075768788 or send an email to support@thebetinvestors.com ',
            'date_time' => '2019-10-11 00:00:00'
        ]); 
        DB::table('faqs')->insert([
            'title' => 'Can I change my username and password? ',
            'body' => 'No, the Username CANNOT be changed, but the password CAN be changed.',
            'date_time' => '2019-10-11 00:00:00'
        ]); 
        DB::table('faqs')->insert([
            'title' => 'How do I change my password? ',
            'body' => 'use the change password link on your profile to change password',
            'date_time' => '2019-10-11 00:00:00'
        ]); 
        DB::table('faqs')->insert([
            'title' => 'What do I do if there are irregularities on my payslip?' ,
            'body' => 'Call the number 09075768788 or send an email to support@thebetinvestors.com ',
            'date_time' => '2019-10-11 00:00:00'
        ]); 
        DB::table('faqs')->insert([
            'title' => 'Who do I contact on issues regarding my salary or step? ' ,
            'body' => 'Call the number 09075768788 or send an email to support@thebetinvestors.com',
            'date_time' => '2019-10-11 00:00:00'
        ]); 
    }

    public function drop(){
        DB::table('faqs')->delete();
    }
}
