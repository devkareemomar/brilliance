<?php

namespace App;

use Illuminate\Database\Eloquent\Model;
use TCG\Voyager\Traits\Translatable;


class Offer extends Model
{
    use Translatable;
    protected $table = 'offers';
    protected $translatable = ['title','content','description'];
}
