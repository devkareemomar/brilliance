<?php

namespace App;

use Illuminate\Database\Eloquent\Model;
use TCG\Voyager\Traits\Translatable;


class Material extends Model
{
    use Translatable;
    protected $table = 'materials';
    protected $translatable = ['title','content'];
    public function  categoryId(){
        return $this->belongsTo(CategoryMaterial::class);
    }
}
