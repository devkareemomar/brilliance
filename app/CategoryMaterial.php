<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

use TCG\Voyager\Traits\Translatable;

class CategoryMaterial extends Model
{
    use Translatable;
    protected $table = 'category_materials';
    protected $translatable = ['title'];
}
