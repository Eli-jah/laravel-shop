<?php

namespace App\Models;

use App\Exceptions\InternalException;
use Illuminate\Database\Eloquent\Model;

class ProductSku extends Model
{
    /**
     * The attributes that are mass assignable.
     *
     * @var array
     */
    protected $fillable = [
        'title',
        'description',
        'price',
        'stock'
    ];

    /**
     * The relationships that should be touched on save.
     *
     * @var array
     */
    /*protected $touches = [
        'product'
    ];*/

    public function decreaseStock($amount)
    {
        if ($amount < 0) {
            throw new InternalException('减库存不可小于0');
        }

        return $this->where('id', $this->id)->where('stock', '>=', $amount)->decrement('stock', $amount);
    }

    public function increaseStock($amount)
    {
        if ($amount < 0) {
            throw new InternalException('加库存不可小于0');
        }

        $this->increment('stock', $amount);
    }

    /* Eloquent Relationships */
    public function product()
    {
        return $this->belongsTo(Product::class);
    }
}
