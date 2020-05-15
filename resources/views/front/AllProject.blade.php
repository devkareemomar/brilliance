@extends('front.layout')

@section('content')

 <!--Page Title-->
 <section class="page-title" style="background-image:url({{asset('front/images/background/bg-page-title-1.jpg')}});">
    <div class="auto-container">
        <h1>{{__('index.Our_projects')}}</h1>
    </div>
</section>

<!--Page Info-->
<section class="page-info">
    <div class="auto-container clearfix">
        <div class="@if($lang == 'ar') pull-right @else pull-left @endif"><h2>{{__('index.Our_projects')}}</h2></div>
        <div class="@if($lang == 'ar') pull-left @else pull-right @endif">
            <ul class="bread-crumb clearfix">
                <li><a href="{{url("/$lang")}}">{{__('index.home')}}</a></li>
                <li></li>
            </ul>
        </div>
    </div>
</section>
 <!--Gallery Section-->
 <section class="gallery-section portfolio-with-caption">
    <div class="auto-container">   
       <!--Mixituo Gallery-->
       <div class="mixitup-gallery">
           <!--Filter-->
           <div class="filters text-center">
               <div class="icon-box"><span class="fa fa-picture-o"></span></div>
           
               <ul class="filter-tabs filter-btns clearfix">
                   <li class="active filter" data-role="button" data-filter="all">جميع المشاريع</li>  
                   @foreach ($Category as $cat)

                   <li class="filter" data-role="button" data-filter=".{{ $cat->id }}">{{  $cat->getTranslatedAttribute('title',$lang) }}</li>
                       
                   @endforeach
           </div>
           
           
           <div class="filter-list row clearfix">
               
               <!--Default Portfolio Item-->
               @foreach ($Project as $item)
                   
               <div class="col-md-4 col-sm-6 col-xs-12 default-portfolio-item mix mix_all all {{ $item->category_id }} furniture">
                   <div class="inner-box">
                       <figure class="image-box">
                        @php
     
                        $images = json_decode($item->img); 
                    
                    @endphp 
                           <img style="height: 235px;" src="{{ asset("storage/$images[0]") }}" alt="">
                           <!--Overlay Box-->
                           <div class="overlay-one">
                               <div class="overlay-inner">
                                   <div class="content">
                                       <a href="{{url("$lang/SingleProject/$item->id")}}" class="proj-link"><span class="fa fa-link"></span></a>
                                   </div>
                               </div>
                           </div>
                       </figure>
                       
                       <!--Caption Box-->
                       <div class="caption-box-two">
                       <h3><a href="{{url("$lang/SingleProject/$item->id")}}">{{  $item->getTranslatedAttribute('title',$lang) }}</a></h3>
                           
                       </div>
                   </div>
               </div>
               @endforeach
             
       
        
               
           </div>
           
       </div><!--End Mixituo Gallery-->
       
 
           
   </div>
</section>



@endsection
