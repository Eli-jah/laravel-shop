<?php

namespace App\Models;

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

    /* Eloquent Relationships */
    public function product()
    {
        return $this->belongsTo(Product::class);
    }
}
