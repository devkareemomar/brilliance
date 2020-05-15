@extends('front.layout')

@section('content')


   <!--Page Title-->
   <section class="page-title" style="background-image:url({{asset('front/images/background/bg-page-title-1.jpg')}});">
    <div class="auto-container">
    <h1>{{__('index.Our_service')}}</h1>
    </div>
</section>

<!--Page Info-->
<section class="page-info">
    <div class="auto-container clearfix">
        <div class="@if($lang == 'ar') pull-right @else pull-left @endif"><h2>{{__('index.Our_service')}}</h2></div>
        <div class="@if($lang == 'ar') pull-left @else pull-right @endif">
            <ul class="bread-crumb clearfix">
                <li><a href="{{url("/$lang")}}">{{__('index.home')}}</a></li>
                <li></li>
            </ul>
        </div>
    </div>
</section>


<!--Services Section-->
<section class="services-section">
    <div class="auto-container">
        
        <div class="row clearfix">
            
            <!--Service Block-->
            @foreach ($Service as $item)
                
            <div class="default-services-block col-md-4 col-sm-6 col-xs-12">
                <div class="inner-box">
                    @php
         
                    $images = json_decode($item->img); 
                   
                  @endphp 
                    <figure class="image-box"><img style="width: 370px;height: 250px;" src="{{asset("storage/$images[0]")}}" alt=""><a href="service-single.html" class="overlay-box"><span class="fa fa-link"></span></a></figure>
                    <div class="lower-content">
                        <div class="transparen-icon"><span class="flaticon-improvement"></span></div>
                        <h3><a href="service-single.html">{{  $item->getTranslatedAttribute('title',$lang) }}</a></h3>
                        @php
                          
                        $string =   strip_tags($item->getTranslatedAttribute('content',$lang));
                        // $images = json_decode($service->service_img); 
                      @endphp 
                        <div class="text">{!! \Illuminate\Support\Str::limit($string,200,$end='...') !!}</div>
                        <div class="link-box"><a href="{{ url("$lang/SingleService/$item->id") }}" class="theme-btn read-more">{{__('index.Read_More')}}</a></div>
                    </div>
                </div>
            </div>
            @endforeach
            
        </div>
    </div>
</section>


<!--call-to-action-->
<section class="call-to-action" style="background-image:url({{asset('front/images/background/image-1.jpg')}});">
    <div class="auto-container">
        <div class="row">
        <div class="text">{{__('index.Join_withBrilliance')}}</div>
            <h2>{{ __('index.MakeYourHome') }}</h2>

            <a class="theme-btn btn-style-one" href="#">{{__('index.Contact_us')}}</a>
            <a class="theme-btn btn-style-two" href="{{url("$lang/services")}}">{{__('index.Our_service')}}</a>

        </div>
    </div>
</section>






@endsection
