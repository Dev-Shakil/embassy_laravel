<?php
namespace App\Http\Controllers;

use App\Models\User;
use Illuminate\Http\Request;

class ViewController extends Controller
{

    public function login(Request $request){
       if($request->isMethod('GET')){
            return view('welcome');
       }
       else{
           $email = request('email');
           $pass = request('pass');
           $flag = $user = User::where('email', $email)->exists();
           if($flag){
               $user = User::where('email', $email)->first();
               $actualpass = decrypt($user->password);
               $actualemail = $user->email;
               if($actualemail == $email && $actualpass == $pass){
                    session_start();
                    session(['user' => $actualemail, 'role' => $user->role]);	
                    return response()->json([
                        'title'=> 'Success',
                        'success' => false,
                        'icon' => 'success',
                        'message' => 'Successfully logged in',
                        'redirect_url' => 'user/index'
                     ]);
               }
               else{
                return response()->json([
                    'title'=> 'Error',
                    'success' => false,
                    'icon' => 'error',
                    'message' => 'Wrong Password',
                    'redirect_url' => '/'
                 ]);
               }
           }
           else{
            return response()->json([
                'title'=> 'Error',
                'success' => false,
                'icon' => 'error',
                'message' => 'Email Not Found!',
                'redirect_url' => '/'
             ]);
           }
       }
    }

    public function signup(Request $request)
    {
        if ($request->isMethod('GET')) {
            return view('user.signup');
        }
        else{
            $rname = request('licence_name');
            $rno = request('rl_no');
            $email = request('email');
            $phone = request('phone');
            $address = request('address');
            $pass = request('pass');
            $pass1 = request('pass1');
            // dd(1, $pass == $pass1, 2, request('pass'),3, request('pass1'));
            if($pass == $pass1){
                $user = new User();
                $pass = encrypt($pass);
                $user->licence_name = $rname;
                $user->rl_no = $rno;
                $user->email = $email;
                $user->phone = $phone;
                $user->office_address = $address;
                $user->password = $pass;
                $user->embassy_man_name = "";
                $user->embassy_man_phone = "";
                $user->is_delete = 0;
                $user->role = 'user';
                if($user->save()){
                    return response()->json([
                        'title'=> 'Success',
                        'success' => true,
                        'icon' => 'success',
                        'message' => 'Successfully created',
                        'redirect_url' => '/'
                    ]);
                }
                else{
                   
                    return response()->json([
                       'title'=> 'Error',
                       'success' => false,
                       'icon' => 'error',
                       'message' => 'Something went wrong!',
                       'redirect_url' => '/'
                    ]);
                }    
            }
            else{
                // dd($pass == $pass1);
                return response()->json([
                    'title'=> 'Error',
                    'success' => false,
                    'icon' => 'error',
                    'message' => 'Password does not match!',
                    'redirect_url' => '/'
                ]);
            }
        }
    }
}
