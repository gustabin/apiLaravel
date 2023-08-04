<?php

namespace App\Http\Controllers\Api;

use App\Http\Controllers\Controller;
use App\Models\User;
use Illuminate\Http\Request;

use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Hash;


class UserController extends Controller
{

    public function signin(Request $request)
    {
        try {
            $request->validate([
                'name' => 'required',
                'email' => 'required|email|unique:users',
                'password' => 'required|confirmed'
            ]);

            $user = new User();
            $user->name = $request->name;
            $user->email = $request->email;
            $user->password = Hash::make($request->password);

            $user->save();

            return response()->json([
                "status" => 1,
                "msg" => "Successful registration"
            ]);
        } catch (\Exception $e) {
            // Capturamos la excepción y retornamos un mensaje de error
            return response()->json([
                "status" => 0,
                "msg" => "Error: " . $e->getMessage()
            ]);
        }
    }



    public function login(Request $request)
    {
        $request->validate([
            'email' => 'required|email',
            'password' => 'required'
        ]);
        $user = User::where("email", "=", $request->email)->first();
        if (isset($user->id)) {
            if (Hash::check($request->password, $user->password)) {
                // Create token
                $token = $user->createToken("auth_token")->plainTextToken;
                return response()->json([
                    "status" => 1,
                    "msg" => "Successful login",
                    "access_token" => $token,
                    "user_id" => $user->id,
                ]);
            } else {
                return response()->json([
                    "status" => 0,
                    "msg" => "Invalid password"
                ]);
            }
        } else {
            return response()->json([
                "status" => 0,
                "msg" => "Unregistered user"
            ], 404);
        }
    }

    public function userProfile()
    {
        return response()->json([
            "status" => 0,
            "msg" => "About user profile",
            "data" => auth()->user()
        ]);
    }
    public function logout()
    {
        auth()->user()->tokens()->delete();

        return response()->json([
            "status" => 1,
            "msg" => "Successful logout"
        ]);
    }
}
