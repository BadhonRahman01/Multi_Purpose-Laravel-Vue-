<?php

namespace App\Http\Controllers\Admin;

use App\Models\Setting;
use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use Illuminate\Support\Facades\Cache;

class SettingController extends Controller
{
    public function index(){
            $settings =  Setting::pluck('value', 'key')->toArray();

            if(!$settings){
                $settings = config('settings.default');
            }
            return $settings;
    }

    public function update(){
        $data = request()->validate([
            'app_name' => 'required',
            'date_format' => 'required',
            'pagination_limit' => 'required|numeric',
        ]);

        foreach($data as $key => $value){
            Setting::updateOrCreate(
                ['key' => $key],
                ['value' => $value],
            );
            Setting::where('key', $key)->update(['value' => $value]);
        }

        Cache::flush('settings');

        return response()->json(['success' => true]);
    }
}
