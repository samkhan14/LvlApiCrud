<?php

namespace Database\Seeders;

use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;
use App\Models\User;

class insert_record_in_users_table extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        $users = [
        //    [
        //      'name' => 'Sumaim Ahmed',
        //     'email' => 'sumaim@gmail.com',
        //     'password' => bcrypt('123456')
        //    ],
           [
            'name' => 'Robin',
           'email' => 'robin@gmail.com',
           'password' => bcrypt('123456')
           ]
        ];

        User::insert($users);
    }
}
