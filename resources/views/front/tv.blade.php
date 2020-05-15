@extends('front.layout')

@section('content')



   <!--Page Title-->
   <section class="page-title" style="background-image:url({{asset('front/images/background/bg-page-title-1.jpg')}});">
    <div class="auto-container">
        <h1>{{ __('index.Brilliance') }}</h1>
    </div>
</section>

<!--Page Info-->
<section class="page-info">
    <div class="auto-container clearfix">
        <div class="@if($lang == 'ar') pull-right @else pull-left @endif""><h2>{{ __('index.Brilliance') }}</h2></div>
        <div class="@if($lang == 'ar') pull-left @else pull-right @endif"">
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
          


            <div class="filter-list row clearfix">

                <!--Default Portfolio Item-->
                @foreach ($Tv as $item)
                    
                <div class="col-md-4 col-sm-6 col-xs-12 default-portfolio-item mix mix_all all furniture">
                    <div class="inner-box">
                        
                        <article class="inner-box wow fadeInRight" data-wow-delay="0ms" data-wow-duration="1500ms">
                            <figure class="image-box video-box">
                                <img style="height:266px;" src="{{asset("storage/$item->img")}}" alt="">
                            <a href="{{ $item->url }}" class="lightbox-image video-link">
                                    <div class="icon"><span class="flaticon-play-button-5"></span></div>
                                </a>
                            </figure>
                        </article>

                        <!--Caption Box-->
                        <div class="caption-box-two">
                            <h3><a href="{{ $item->url }}" class="lightbox-image video-link">{{ $item->getTranslatedAttribute('title',$lang) }}</a></h3>
                        </div>
                    </div>
                </div>
                @endforeach

            
            </div>

        </div>
        <!--End Mixituo Gallery-->

    

    </div>
</section>




@endsection
