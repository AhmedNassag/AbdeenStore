<?php

namespace Database\Seeders;

use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;
use App\Models\Currency;


class CurrencySeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {

        //currency
        $currency = Currency::create([
            'code'   => 'EGP',
            'name'   => 'جنيه مصرى',
            'symbol' => 'جنيه مصرى',
        ]);
    }
}
