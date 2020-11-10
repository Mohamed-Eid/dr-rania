<?php

namespace App\Http\Controllers\Dashboard;

use App\City;
use App\Client;
use App\District;
use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use App\Order;
use App\Product;
use App\User;

class DashboardController extends Controller
{
    public function index(){

        $users_count      = User::whereRoleIs('admin')->count();
        return view('dashboard.index' , compact('users_count'));
    }// end of index
}
