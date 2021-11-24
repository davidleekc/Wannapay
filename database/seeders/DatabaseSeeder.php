<?php

namespace Database\Seeders;

use Faker\Factory as Faker;
use Illuminate\Database\Seeder;

use Illuminate\Support\Arr;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Schema;
use Illuminate\Support\Str;

class DatabaseSeeder extends Seeder
{
    /**
     * Seed the application's database.
     *
     * @return void
     */
    public function run()
    {
        Schema::disableForeignKeyConstraints();

        $this->call(AuthTableSeeder::class);

        Schema::enableForeignKeyConstraints();

        $faker = Faker::create();
        
        $card_type = ['Visa', 'Master'];
        $transaction_method = ['wallet', 'FPX'];
        
        $month = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12];
        
        for ($counter = 0; $counter < 50 ; $counter++) {
            DB::table('cards')->insert([
                'bind_to_account' => Str::random(3).$faker->randomNumber(7, true),//ACC12345678
                'card_number' => $faker->numerify('################'), //1111-2222-3333-4444
                'card_holder' => $faker->name(), //John Doe
                'expired_month' => Arr::random($month), //1 - 12
                'expired_year' => mt_rand(2022, 2030), //2000
                'card_type' => Arr::random($card_type), //VISA/MASTER
            ]);
            
            DB::table('accounts')->insert([
                'account_no' => Str::random(3).$faker->randomNumber(7, true), //ACC12345678
                'account_name' => $faker->name(), //Johnny Doe
                'address' => $faker->address(), //1, Street 1
                'description' => $faker->text(), //About myself
                'account_balance' => $faker->randomFloat(2, 0, 5000), //10.02
                'account_verified' => $faker->numberBetween(0, 1), // 0/1
            ]);
            
            DB::table('transactions')->insert([
                'transaction_ref_no' => $faker->randomNumber(8, true).$faker->randomNumber(8, true), //20201010-12345678
                'transaction_date' => $faker->date('Y/m/d'), //2020/10/10
                'transaction_amount' => $faker->randomFloat(2, 0, 5000), //100.02
                'transaction_method' => Arr::random($transaction_method), //wallet/FPX
                'transaction_description' => $faker->text(), //buy shoe
                'transaction_from' => $faker->name(), //Jonny Doe
                'transaction_to' => $faker->name(), //Timmy Doe
            ]);
        }
    }
}
