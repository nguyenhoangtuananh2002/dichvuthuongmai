<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Relations\BelongsTo;
use Illuminate\Database\Eloquent\Relations\HasMany;
use Illuminate\Database\Eloquent\Relations\HasOne;
use App\Enums\Order\{OrderStatus, PaymentMethod};
use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Support\Facades\DB;

class Order extends Model
{
    use HasFactory;

    protected $table = 'orders';

    protected $guarded = [];

    protected $casts = [
        'status' => OrderStatus::class,
        'payment_method' => PaymentMethod::class
    ];

    public function orderDetail(): HasOne
    {
        return $this->hasOne(OrderDetail::class, 'order_id');
    }

    public function orderDetails():HasMany
    {
        return $this->hasMany(OrderDetail::class, 'order_id')->orderBy('id', 'desc');
    }

    public function user() :BelongsTo
    {
        return $this->belongsTo(User::class, 'user_id');
    }

    public function checkEarningPoint()
    {
        return DB::table('order_earning_point')
            ->where('order_id', $this->id)
            ->where('user_id', $this->user_id)
            ->first();
    }

    public function scopeCurrentAuth($query)
    {
        return $query->where('user_id', auth()->user()->id);
    }

}
