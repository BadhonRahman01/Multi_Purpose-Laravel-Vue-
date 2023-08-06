<?php

namespace App\Http\Controllers\Admin;

use Illuminate\Http\Request;

use Illuminate\Validation\Rule;
use App\Http\Controllers\Controller;



class ProfileController extends Controller
{
    public function index(Request $request){

        return $request->user()->only(['name', 'email', 'role']);
    }

    public function update(Request $request)
    {
        $validated = $request->validate([
            'name' => 'required',
            'email' => ['required', 'email', Rule::unique('users')->ignore($request->user()->id)],

        ]);

        $request->user()->update($validated);

        return response()->json(['success' => true]);
    }
}
