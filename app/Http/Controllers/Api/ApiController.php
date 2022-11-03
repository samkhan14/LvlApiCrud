<?php

namespace App\Http\Controllers\Api;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Models\User;

class ApiController extends Controller
{
    // get all users and by id
    public function getUsers($id = null)
    {
        if (empty($id)) {
            $users = User::get();
            return response()->json(['users' => $users], 200);
        } else {
            $users = User::find($id);
            return response()->json(['users' => $users], 200);
        }
    }

    // add user
    public function addUser(Request $request)
    {
        if ($request->isMethod('post')) {
            $userdata = $request->input();

            // all fields are required
            if (empty($userdata['name']) || empty($userdata['email']) || empty($userdata['password'])) {
                $errosmsg = "Please Fill the All Fields";
            }

            // email validation required
            if (!filter_var($userdata['email'], FILTER_VALIDATE_EMAIL)) {
                $errosmsg = "Please Put correct Email Address";
            }

            // email already exists
            $userCount = User::where('email', $userdata['email'])->count();
            if ($userCount > 0) {
                $errosmsg = "Email Address Already Exists";
            }

            if (isset($errosmsg) && !empty($errosmsg)) {
                return response()->json(['status' => false, 'message' => $errosmsg], 422);
            }

            $adduser = new User;
            $adduser->name = $userdata['name'];
            $adduser->email = $userdata['email'];
            $adduser->password = bcrypt($userdata['password']);
            $adduser->save();
            return response()->json(['message' => 'User added successfully'], 201);
        }
    }

    // add multiple users
    public function addmultipledata(Request $request)
    {
        if ($request->isMethod('post')) {
            $multidata = $request->input();
            //  print_r($multidata);
            //  die;
            foreach ($multidata['users'] as $key => $value) {
                $adduser = new User;
                $adduser->name = $value['name'];
                $adduser->email = $value['email'];
                $adduser->password = bcrypt($value['password']);
                $adduser->save();
            }

            return response()->json(['message' => 'Multi Users added successfully'], 201);
        }
    }


    // User Update
    public function updateUser(Request $request, $id)
    {
        if ($request->isMethod('put')) {
            $userData = $request->input();
            // dd($userData);
            User::where('id', $id)->update(['name' => $userData['name'], 'password' => bcrypt($userData['password']), 'email' => $userData['email']]);
            return response()->json(['message' => 'User updated successfully'], 202);
        }
    }

    // update username just single record
    public function updateUsername(Request $request, $id)
    {
        if ($request->isMethod('patch')) {
            $userData = $request->input();
            User::where('id', $id )->update(['name' => $userData['name']]);
            return response()->json(['message' => 'Username updated successfully'], 202);
        }
    }

    // delete user
    public function deleteUser($id)
    {
        User::where('id', $id)->delete();
        return response()->json(['message' => 'User deleted successfully'], 202);
    }


}
