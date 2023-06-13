<?php

namespace App\Http\Controllers;

use App\DetailOrder;
use App\Information;
use App\Order;
use App\Product;
use App\User;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;

class UserProfileController extends Controller
{   
    private $order;
    private $detailOrder;
    private $product;
    private $info;
    private $user;
    public function __construct(Order $order,DetailOrder $detailOrder,Product $product,Information $info,User $user){
        $this->order = $order;
        $this->detailOrder = $detailOrder;
        $this->product = $product;
        $this->info = $info;
        $this->user =$user;
    }
    
    public function index(){
        // if(Auth::user()){
        //     $info_user = User::find(Auth::id())->information;
        //     $purchased_order = $this->order->where('user_id',Auth::id())->get();
        //     //$product_thumbnail = $this->product->where('id',$purchased_order->)
        //     //$detailOrder = $this->detailOrder->where('order_id',$purchased_order->id);
        //     //dd($detailOrder);
        //     $order = $this->order->find(13)->customer;
        //     foreach($purchased_order as $order){
        //         $ids[] = $order->id;
        //     }
        //     $detail_order = $this->detailOrder->WhereIn('order_id',$ids)->get();

        //     //dd($detail_order);
        //     //return $order;
        //     //dd($order);
        //     //dd($purchased_order);
        //     $user = Auth::user()->information;
        // }
        //dd($user);
        //return $user;
        //echo($user->information->id);
        return view('user.profile.profile');
    }
    public function store(){
        return view('user.profile.update');
    }
    public function update(Request $request){
        $dataUserUpdate = [
            'phone' => $request->phone,
            'address' => $request->address
        ];
        $this->user->find(Auth::id())->information()->update($dataUserUpdate);
        return redirect()->route('profile.index')->with('status','Cập nhật thông tin thành công');
        
    }
    public function logout(){
        Auth::logout();
        return redirect()->route('login');
    }
}
