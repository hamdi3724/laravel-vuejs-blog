<?php

use Illuminate\Database\Seeder;

class SettingSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        //
        \App\Setting::create([
            'site_name'=>'Hamdi farjallah',
            'contact_email'=>'hamdifarjallah.tn@gmail.com',
            'address'=>'address exp',
          ]);
    }
}
