@extends('front.layout')

@section('content')


  <!--Page Title-->
  <section class="page-title" style="background-image:url({{asset('front/images/background/bg-page-title-1.jpg')}});">
    <div class="auto-container">
        <h1>{{__('index.Gallery')}}</h1>
    </div>
</section>

<!--Page Info-->
<section class="page-info">
    <div class="auto-container clearfix">
        <div class="@if($lang == 'ar') pull-right @else pull-left @endif"><h2>{{__('index.Gallery')}}</h2></div>
        <div class="@if($lang == 'ar') pull-left @else pull-right @endif">
            <ul class="bread-crumb clearfix">
                <li><a href="{{url("/$lang")}}">{{__('index.home')}}</a></li>
                <li></li>
            </ul>
        </div>
    </div>
</section>

<!--Gallery Section-->
<section class="gallery-section fullwidth">
        
    <!--Mixituo Gallery-->
    <div class="mixitup-gallery">
        <!--Filter-->
        {{-- <div class="filters text-center">
        <div class="icon-box"><span class="fa fa-picture-o"></span></div>
        
            <ul class="filter-tabs filter-btns clearfix">
                <li class="active filter" data-role="button" data-filter="all">All Projects</li>          
                <li class="filter" data-role="button" data-filter=".painting">Painting</li>
                <li class="filter" data-role="button" data-filter=".flooring">Flooring</li>
                <li class="filter" data-role="button" data-filter=".tile-marble">Tile &amp; Marble</li>
                <li class="filter" data-role="button" data-filter=".furniture">Furniture</li>
                <li class="filter" data-role="button" data-filter=".lighting">Lighting</li>
            </ul>
        </div> --}}
        
        
        <div class="filter-list clearfix">
            
            <!--Default Portfolio Item-->
            @foreach ($Gallery as $item)
                
            <div class="col-lg-3 col-md-4 col-sm-6 col-xs-12 default-portfolio-item mix mix_all all tile-marble furniture">
                <div class="inner-box">
                    <figure class="image-box"><img style="height: 380px;" src="{{ asset("storage/$item->img") }}" alt=""></figure>
                    <!--Overlay Box-->
                    <div class="overlay-one">
                        <div class="overlay-inner">
                            <div class="content">

                                <a href="{{asset("storage/$item->img")}}" class="proj-link"><span class="fa fa-link"></span></a>
                            </div>
                        </div>
                    </div>
                    <!--Caption Box-->
                    <div class="caption-box-one">
                        <h3><a>{{  $item->getTranslatedAttribute('title',$lang) }}</a></h3>
                  
                    </div>
                </div>
            </div>
            @endforeach
          
          
           
        </div>
        
    </div><!--End Mixituo Gallery-->
    
    
</section>


@endsection
