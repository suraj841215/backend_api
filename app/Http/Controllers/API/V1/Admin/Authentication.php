<?php

namespace App\Http\Controllers\API\V1\Admin;

use App\Http\Controllers\Controller;
use Hash;
use Illuminate\Database\QueryException;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use App\Models\Admin;
use App\Models\User;
use Illuminate\Support\Facades\Validator;



class Authentication extends Controller
{
    /**
     * @Created by @arjun on 09-08-2023 for admin login process
     */
    public function admin_login(Request $request)
    {
        try {
            $credentials = $request->only('username', 'password');
            if (Auth::guard('admin')->attempt($credentials)) {
                $user = Auth::guard('admin')->user();
                $token = $user->createToken('auth-token')->plainTextToken;
                return response()->json([
                    'status' => true,
                    'msg' => 'Login successful',
                    'token' => $token,
                    'data' => $user,
                ]);
                exit();
            } else {    
                return response()->json([
                    'status' => false, 
                    'msg' => 'Invalid credentials'
                ]);
                exit();
            }
        }
        catch(QueryException $e) {
            return response()->json([
                'status' => false, 
                'msg' => "Something went wrong !!!!"
            ]);
            exit();
        }
    }

    /**
     * @process use for get user details by @arjun on 09-08-2023
     */

    public function admin_logout(Request $request){
         auth()->user()->tokens()->delete();
         return response()->json([
            'status'=>true,
            'msg'=>'Logout Successfully!!!',
         ]);
         exit();
    }

    /**
     * @process use for get user details by @arjun on 09-08-2023
     */
    public function getProfile(Request $request) {
        try {
            $admin = Auth::user();
            return response()->json([
                'status' => true,
                'msg' => 'Success',
                'data' => $admin,
            ]);
            exit();
        }
        catch (QueryException $e) {
            return response()->json([
                'status' => false,
                'msg' => 'Something went wrong',
                'data' => ''
            ]);
            exit();
        }
    }

    public function changePassword(Request $request){
        //    $user = Auth::user()->username;
        //    echo $user;
        //    exit();
          try{
            $rules =[
                'old_password' => [
                    'required', function ($attribute, $value, $fail) {
                        if (!Hash::check($value, Auth::user()->password)) {
                            $fail('Old Password didn\'t match');
                        }
                    },
                ],
                'new_password'         =>'required|min:4|different:old_password|same:new_password',
                'confirm_password'     =>'required|same:new_password'
            ];
           $validator = Validator::make($request->all(), $rules);
            if ($validator->fails()) {
                return response()->json([
                    'status' => false,
                    'msg'    =>$validator->errors()->first()
                ]);
                exit();
            }
       

               $admin = Admin::find(Auth::user()->id);
            if ($admin) {
                $admin->password = Hash::make($request->password);
                $admin->save();
                return response()->json([
                    'status' => true,
                    'msg' => "Password successfully updated!"
                ]);
                exit();
            }
            else
            {
                return response()->json([
                    'status' => false,
                    'msg'    => "old password does not match",
                ]);
                exit();
            }
          }catch(QueryException $e){
             return response()->json([
                'status'  => false,
                'msg'     => "Something went wrong!"
             ]);
             exit();
          }
    }
}
