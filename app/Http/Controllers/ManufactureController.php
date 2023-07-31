<?php

namespace App\Http\Controllers;

use App\Manufacture;
use App\Role;
use App\User;
use Illuminate\Http\Request;
use Yajra\DataTables\Facades\DataTables;
use Illuminate\Support\Facades\DB;
use Carbon\Carbon;
use Illuminate\Support\Facades\Auth;

class ManufactureController extends Controller
{

    public function __construct()
    {
        $this->manufacture = new Manufacture();
        $this->user = new User();
        $this->role = new Role();
    }

    public function index()
    {
        $user = $this->user->where('id', Auth::id())->first();

        $role = $this->role->where('id', $user->role_id)->first();

        return view('backend.manufacture.index', compact(['role', 'user']));
    }

    public function source(){
        $query= Manufacture::query();
        return DataTables::eloquent($query)
        ->filter(function ($query) {
            if (request()->has('search')) {
                $query->where(function ($q) {
                    $q->where('name', 'LIKE', '%' . request('search')['value'] . '%');
                });
            }
            })
            ->addColumn('name', function ($data) {
                return title_case($data->name);
            })
            ->addIndexColumn()
            ->addColumn('action', 'backend.manufacture.index-action')
            ->rawColumns(['action'])
            ->toJson();
    }

    public function create()
    {
        $user = $this->user->where('id', Auth::id())->first();

        $role = $this->role->where('id', $user->role_id)->first();

        return view('backend.manufacture.create', compact('role', 'user'));
    }

    public function store(Request $request)
    {
        DB::beginTransaction();
        try {
            $requset = $request->merge(['slug'=>$request->name]);
            $this->manufacture->create($request->all());
            DB::commit();
            return redirect()->route('manufacture.index')->with('success-message','Data telah disimpan');
        } catch (\Exception $e) {
            DB::rollback();
            return redirect()->back()->with('error-message',$e->getMessage());
        }

    }

    public function show($id)
    {
        $data = $this->manufacture->find($id);
        return $data;

    }

    public function edit($id)
    {
        $user = $this->user->where('id', Auth::id())->first();

        $role = $this->role->where('id', $user->role_id)->first();
        $data = $this->manufacture->find($id);
        return view('backend.manufacture.edit',compact('data', 'role', 'user'));
    }

    public function update(Request $request, $id)
    {
        DB::beginTransaction();
        try {
            $request = $request->merge(['slug'=>$request->name]);
            $this->manufacture->find($id)->update($request->all());
            DB::commit();
            return redirect()->route('manufacture.index')->with('success-message','Data telah d irubah');
        } catch (\Exception $e) {
            DB::rollback();
            return redirect()->back()->with('error-message',$e->getMessage());
        }

    }

    public function destroy($id)
    {
        $this->manufacture->destroy($id);
        return redirect()->route('manufacture.index')->with('success-message','Data telah dihapus');
    }

    public function getManufacture(Request $request){
        if ($request->has('search')) {
            $cari = $request->search;
    		$data = $this->manufacture->where('name', 'LIKE', '%'.$cari.'%')->get();
            return response()->json($data);
    	}
    }

    public function find($id){
        return $this->manufacture->find($id);
    }

}
