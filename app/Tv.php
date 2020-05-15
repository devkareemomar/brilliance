<?php

namespace App;

use Illuminate\Database\Eloquent\Model;
use TCG\Voyager\Traits\Translatable;


class Tv extends Model
{
    use Translatable;
    protected $table = 'tv';
    protected $translatable = ['title'];
}
