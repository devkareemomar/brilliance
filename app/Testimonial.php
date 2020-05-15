<?php

namespace App;

use Illuminate\Database\Eloquent\Model;
use TCG\Voyager\Traits\Translatable;



class Testimonial extends Model
{
     use Translatable;
    protected $table = 'testimonial';
    protected $translatable = ['name','content','college'];


    
}
