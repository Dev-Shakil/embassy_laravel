<?php

namespace App\Http\Controllers;

use App\Models\Candidates;
use Illuminate\Http\Request;

class UserController extends Controller
{
   public function index(Request $request){
        if($request->isMethod('GET')){
            $candidates = Candidates::all();
            // dd($candidate);
            return view('user.index', compact('candidates'));
        }
        else{
            // dd($request->all());
            $candidate = new Candidates();
            $candidate->name = $request->pname;
            $candidate->passport_number = $request->pnumber;
            $candidate->passport_issue_date = $request->pass_issue_date;
            $candidate->passport_expire_date = $request->pass_expire_date;
            $candidate->date_of_birth = $request->date_of_birth;
            $candidate->place_of_birth = $request->place_of_birth;
            $candidate->address = $request->address;
            $candidate->father = $request->father;
            $candidate->mother = $request->mother;
            $candidate->religion = $request->religion;
            $candidate->married = $request->married;
            $candidate->medical_center = $request->medical_center_name;
            $candidate->medical_issue_date = $request->medical_issue_date;
            $candidate->medical_expire_date = $request->medical_expire_date;
            $candidate->police = $request->police_licence;
            $candidate->driving_licence = $request->driving_licence;
            $candidate->is_delete = 0;
            // dd($candidate->save());
            if($candidate->save()){
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
                    'message' => 'Cannot add',
                    'redirect_url' => '/'
                ]);
            }
        }
   }

   public function visa_add(Request $request, $id){
        if($request->isMethod('GET')){
           
            return view('user.addvisa', ['id' => $id]);
        }
        else{
            dd($request->all());
        }
    }    
}
