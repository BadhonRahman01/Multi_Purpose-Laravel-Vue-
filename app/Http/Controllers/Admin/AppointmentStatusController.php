<?php

namespace App\Http\Controllers\Admin;

use App\Models\Appointment;
use Illuminate\Http\Request;
use App\Enums\AppointmentStatus;
use App\Http\Controllers\Controller;

class AppointmentStatusController extends Controller
{
    public function getStatusWithCount()
    {
        $cases = AppointmentStatus::cases();
        return  collect($cases)->map(function ($status){
            return [
                'name' => $status->name,
                'value' => $status->value,
                'count' => Appointment::query()->where('status', $status)->count(),
                'color' => AppointmentStatus::from($status->value)->color(),
            ];
        });
    
            // return Appointment::query()
            // ->selectRaw('status, count(*) as count')
            // ->groupBy('status')
            // ->get()
            // ->mapWithKeys(fn ($status) => [$status->status => $status->count]);
    }
}
