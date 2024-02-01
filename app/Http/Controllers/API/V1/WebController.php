<?php

namespace App\Http\Controllers\API\V1;

use App\Http\Controllers\Controller;
use App\Models\Quote;
use Illuminate\Http\Request;

class WebController extends Controller
{
    public function getData(Request $request){
        $quotes = Quote::inRandomOrder()->limit(10)->get();
        return response()->json(['status' => true, 'msg' => "success", 'data' => $quotes]);
    }
}
