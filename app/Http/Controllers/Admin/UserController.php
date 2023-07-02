<?php

namespace App\Http\Controllers\Admin;

use App\Models\User;
use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use Carbon;

class UserController extends Controller
{
    public function index()
    {
        // $users = User::latest()->get()->map(function ($user) {
        //     return [
        //         'id' => $user->id,
        //         'name' => $user->name,
        //         'email' => $user->email,
        //         'created_at' => $user->created_at->toFormattedDate(),
        //     ];
        // });
        $users = User::latest()->paginate();
        return $users;
    }

    public function store()
    {
        request()->validate([
            'name' => 'required',
            'email' => 'required|unique:users,email',
            'password' => 'required|min:8',
        ]);

        return User::create([
            'name' => request('name'),
            'email' => request('email'),
            'password' => bcrypt('password')
        ]);
    }

    public function update(User $user)
    {
        request()->validate([
            'name' => 'required',
            'email' => 'required|unique:users,email,' . $user->id,
            'password' => 'sometimes|min:8',
        ]);

        $user->update([
            'name' => request('name'),
            'email' => request('email'),
            'password' => request('password') ? bcrypt(request('password')) : $user->password,
        ]);


        return $user;
    }


    public function destroy(User $user)
    {
        $user->delete();
        return response()->noContent();
    }

    public function changeRole(User $user)
    {
        // request()->validate([
        //     'role' => 'required|in:admin,user',
        // ]);

        $user->update([
            'role' => request('role'),
        ]);

        return response()->json(['success' => true]);
    }

    public function search()
    {
        // request()->validate([
        //     'query' => 'required',
        // ]);

        // $users = User::where('name', 'like', '%' . request('query') . '%')
        //     ->orWhere('email', 'like', '%' . request('query') . '%')
        //     ->get();
        $searchQuery = request('query');

        $users = User::where('name', 'like', '%' . $searchQuery . '%')->paginate();

        return response()->json($users);
    }
}
