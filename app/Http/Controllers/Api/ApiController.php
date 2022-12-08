<?php

namespace App\Http\Controllers\Api;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use Illuminate\Support\Str;
use App\Models\User;
use Faker\Core\Number;
use Auth;

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

    // get all users list secure
    public function getusersLists(Request $request)
    {
        $header = $request->header('Authorization');
        if (empty($header)) {
            $msg = "Header authorization is missing";
            return response()->json(['status' => false, 'message' => $msg]);
        } else {
            if ($header == 'bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOiIxMjM0NTY3ODkwIiwibmFtZSI6IlN1bWFpbSBBaG1lZCIsImlhdCI6MTUxNjIzOTAyMn0.PE4Q_kkTaU6BQP8oIQ1DIzpUDVZisRNf6vSIqEW2Mv8') {
                $users = User::get();
                return response()->json(['users' => $users], 200);
            } else {
                $msg = "Header authorization is incorrect";
                return response()->json(['status' => false, 'message' => $msg], 422);
            }
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

    public function registerUser(Request $request)
    {
        if ($request->isMethod('post')) {
            $data = $request->all();
            //dd($data);

            // all fields are required
            if (empty($data['name']) || empty($data['email']) || empty($data['password'])) {
                $errosmsg = "Please Fill the All Fields";
            }

            // email validation required
            if (!filter_var($data['email'], FILTER_VALIDATE_EMAIL)) {
                $errosmsg = "Please Put correct Email Address";
            }

            // email already exists
            $userCount = User::where('email', $data['email'])->count();
            if ($userCount > 0) {
                $errosmsg = "Email Address Already Exists";
            }

            if (isset($errosmsg) && !empty($errosmsg)) {
                return response()->json(['status' => false, 'message' => $errosmsg], 422);
            }

            //Generate API Token
            $apiToken = Str::random(60);

            $user = new User;
            $user->name = $data['name'];
            $user->email = $data['email'];
            $user->password = bcrypt($data['password']);
            $user->api_token = $apiToken;
            $user->save();
            return response()->json(['status' => true, 'message' => 'User registered successfully', 'token' => $apiToken], 201);
        }
    }

    public function registerUserWithPassport(Request $request)
    {
        if ($request->isMethod('post')) {
            $data = $request->all();
            //dd($data);

            // all fields are required
            if (empty($data['name']) || empty($data['email']) || empty($data['password'])) {
                $errosmsg = "Please Fill the All Fields";
            }

            // email validation required
            if (!filter_var($data['email'], FILTER_VALIDATE_EMAIL)) {
                $errosmsg = "Please Put correct Email Address";
            }

            // email already exists
            $userCount = User::where('email', $data['email'])->count();
            if ($userCount > 0) {
                $errosmsg = "Email Address Already Exists";
            }

            if (isset($errosmsg) && !empty($errosmsg)) {
                return response()->json(['status' => false, 'message' => $errosmsg], 422);
            }

            //Generate API Token
            // $accessToken = Str::random(60);

            $user = new User;
            $user->name = $data['name'];
            $user->email = $data['email'];
            $user->password = bcrypt($data['password']);
            // $user->api_token = $accessToken;
            $user->save();

            if (Auth::attempt(['email' => $data['email'], 'password' => $data['password']])) {
                $user = User::where('email', $data['email'])->first();
                // GENERATE ACCESS_TOKEN WITH PASSPORT
                $accessToken = $user->createToken($data['email'])->accessToken;
                //UPDATE ACCESS_TOKEN IN USERS TABLE
                User::where('email', $data['email'])->update(['api_token' => $accessToken]);
                return response()->json(['status' => true, 'message' => 'User registered successfully with Passport Authentication', 'token' => $accessToken], 201);
            }
            else{
                $msg = "User registration failed";
                return response()->json(['status' => false, 'message' => $msg], 422);
            }

           //    return response()->json(['status' => true, 'message' => 'User registered successfully', 'token' => $accessToken], 201);
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
            User::where('id', $id)->update(['name' => $userData['name']]);
            return response()->json(['message' => 'Username updated successfully'], 202);
        }
    }

    // delete user
    public function deleteUser($id)
    {
        User::where('id', $id)->delete();
        return response()->json(['message' => 'User deleted successfully'], 202);
    }

    public function MultipledeleteUser($ids)
    {
        $ids = explode(',', $ids);
        User::whereIn('id', $ids)->delete();
        return response()->json(['message' => 'Users deleted successfully'], 202);
    }

    //User Login API
    public function userLogin(Request $request)
    {
        if ($request->isMethod('post')) {
            $data = $request->all();

            $userdata = User::where('email', $data['email'])->first();
            //verfiy password
            if (password_verify($data['password'], $userdata->password)) {
                //update token
                $api_token = str::random(60);
                User::where('email', $data['email'])->update(['api_token' => $api_token]);
                return response()->json(['status' => true, 'message' => 'User login successfully', 'token' => $api_token], 201);
            } else {
                return response()->json(['status' => false, 'message' => 'Password verification is invalid'], 422);
            }
        }
    }

    //Logout API
    public function userLogout(Request $request)
    {
        $api_token = $request->header('Authorization');
        if (empty($api_token)) {
            $msg = "User token is missing";
            return response()->json(['status' => false, 'message' => $msg], 422);
        }
        else{
            $api_token = str_replace("Bearer ", "", $api_token);
            $usercount =  User::where('api_token',$api_token)->count();
            if ($usercount > 0) {
                // update user token to null
                User::where('api_token',$api_token)->update(['api_token' => NULL]);
                $msg = "User Logged out Successfully";
                return response()->json(['status' => true, 'message' => $msg],200);
            }
        }
    }
}
