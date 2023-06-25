<?php

namespace App\Http\Controllers;
use App\Role;
use Illuminate\Http\Request;

class RoleController extends Controller
{
    private $role;
    function __construct(Role $role)
    {
        $this->role = $role;
    }

    public function index(){
        $listRole = $this->role->all();
        //dd($listRole);

        return view('admin.role.list',compact('listRole'));
    }
    public function add(){
        return view('admin.role.add');
    }
}
