<?php

namespace App;

use Illuminate\Database\Eloquent\Model;
use TCG\Voyager\Traits\Translatable;


class Gallery extends Model
{
    use Translatable;
    protected $table = 'gallery';
    protected $translatable = ['title'];
}
