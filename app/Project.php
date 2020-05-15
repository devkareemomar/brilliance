<?php

namespace App;

use Illuminate\Database\Eloquent\Model;
use TCG\Voyager\Traits\Translatable;


class Project extends Model
{
    use Translatable;
    protected $table = 'project';
    protected $translatable = ['title','content'];
    public function  categoryId(){
        return $this->belongsTo(Category::class);
    }
}
