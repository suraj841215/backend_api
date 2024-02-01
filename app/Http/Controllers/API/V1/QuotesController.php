<?php

namespace App\Http\Controllers\API\V1;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Models\Quote;
use Illuminate\Support\Facades\Validator;

class QuotesController extends Controller
{
    public function index(){
        return view('index');
    }

    public function store(Request $request){
       $validator = Validator::make($request->all(),[
        'name' => 'required'
       ]);
       if($validator->fails()){
            return response()->json([
                'Status' => $validator->errors()
            ]);
       }
        $quotes = new Quote();
        $quotes->name = $request->name;
        if($quotes->save()){
            return [
                'Status' => 'success',
                'Msg' => 'Quotes has been saved'
            ];
        }
    }

    public function update(Request $request){
        $quotes = Quote::find($request->id);
        $quotes->name = $request->name;
        if($quotes->save()){
            return [
                'Status' => 'success',
                'Msg' => 'Quotes has been updated'
            ];
        }
  }

  public function delete(Request $request){
    $quotes = Quote::find($request->id);
    $quotes->delete();
    return [
        'Status' => 'success',
        'Msg' => 'Quotes delete successfully'
    ];

  }
}
