<?php

namespace App;

use Illuminate\Database\Eloquent\Model;
use TCG\Voyager\Traits\Translatable;


class News extends Model
{
     use Translatable;
    protected $table = 'news';
    protected $translatable = ['title','content','name'];
    
}
