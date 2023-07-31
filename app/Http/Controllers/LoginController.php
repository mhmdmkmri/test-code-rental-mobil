<?php

namespace App\Http\Controllers;

use App\Http\Controllers\Controller;
use App\Http\Requests\LoginRequest;
use Illuminate\Http\Request;
use Illuminate\Foundation\Auth\AuthenticatesUsers;
use App\Car;
use App\Customer;
use App\Transaction;
use App\User;
use App\Role;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Hash;

class LoginController extends Controller
{

    use AuthenticatesUsers;

    protected $redirectTo = '/dashboard';

    public function __construct()
    {
        $this->car = new Car();
        $this->customer = new Customer();
        $this->transaction = new Transaction();
        $this->user = new User();
        $this->role = new Role();
    }

    public function username()
    {
        return 'username';
    }

    public function showLoginForm()
    {
        return view('backend.component.login');
    }

    public function register()
    {
        return view('backend.component.register');
    }

    public function registerCreate(Request $request)
    {
        DB::beginTransaction();
        try {
            // $password = $request->merge(['password'=>Hash::make($request->password)]);
            $slug = $request->merge(['slug' => $request->name]);
            $user = new User([
                'username' => $request->username,
                'password' => Hash::make($request->password),
                'name' => $request->name,
                'email' => $request->email,
                'role_id' => '64420065-cb52-4778-9391-f3016ae61751',
            ]);

            $user->save();

            $user = User::find($user->id);



            $customer = new Customer([
                'user_id' => $user->id,
                'name' => $request->name,
                'slug' => $slug->slug,
                'nik' => $request->nik,
                'sex' => $request->sex,
                'address' => $request->address,
                'phone_number' => $request->phone_number,
                'email' => $request->email,
            ]);

            $customer->save();

            DB::commit();
            return redirect()->route('login')->with('success-message','Data telah disimpan');
        } catch (\Exception $e) {
            DB::rollback();
            return redirect()->back()->with('error-message',$e->getMessage());
        }
    }

    public function dashboard()
    {
        $car = $this->car;
        $customer = $this->customer;
        $transaction  = $this->transaction;
        $transaction_data = [];
        for ($i = 1; $i <= 12; $i++) {
            $lul = $this->transaction->whereMonth('created_at', sprintf('%02s', $i))->whereYear('created_at', date('Y'))->get()->count();
            $transaction_data[] = $lul;
        }
        $label = ['Januari', 'Februari', 'Maret', 'April', 'Mei', 'Juni', 'Juli', 'Agustus', 'September', 'Oktober', 'November', 'Desember'];
        $chartjs = app()->chartjs
            ->name('trans')
            ->type('line')
            ->size(['width' => 400, 'height' => 200])
            ->labels($label)
            ->datasets([
                [
                    "label" => "Transaksi",
                    'backgroundColor' => "rgba(78, 115, 223, 0.05)",
                    'borderColor' => "#df4e4ef7",
                    "pointHoverRadius" => "3",
                    "pointHitRadius" => "10",
                    "pointBorderWidth" => "2",
                    "pointBorderColor" => "#df4e4ef7",
                    "pointBackgroundColor" => "#df4e4ef7",
                    "pointHoverBackgroundColor" => "#df4e4ef7",
                    "pointHoverBorderColor" => "#df4e4ef7",
                    'data' => $transaction_data,
                    // 'data' => [1,2,3,4,5,6,7,8,9,10,11,12]
                ]
            ])
            ->optionsRaw("{
             'animation': {
                 'duration': 2000
             }
         }");

        $user = $this->user->where('id', Auth::id())->first();

        $role = $this->role->where('id', $user->role_id)->first();

        return view('backend.dashboard.index', compact(['car', 'customer', 'transaction', 'chartjs', 'user', 'role']));
    }
}
