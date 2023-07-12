<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use App\Models\Client;
use Illuminate\Database\Eloquent\Relations\BelongsTo;
use App\Enums\AppointmentStatus;
use Illuminate\Database\Eloquent\Casts\Attribute;

class Appointment extends Model
{
    use HasFactory;

    protected $guarded = [];


    protected $casts = [
        'start_time' => 'datetime',
        'end_time' => 'datetime',
        'status' => AppointmentStatus::class,
    ];


    public function client(): BelongsTo
    {
        return $this->belongsTo(Client::class);
    }
}
