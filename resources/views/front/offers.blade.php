@extends('front.layout')

@section('content')


   <!--Page Title-->
   <section class="page-title" style="background-image:url({{asset('front/images/background/bg-page-title-1.jpg')}});">
    <div class="auto-container">
    <h1>{{__('index.Offers')}}</h1>
    </div>
</section>

<!--Page Info-->
<section class="page-info">
    <div class="auto-container clearfix">
        <div class="@if($lang == 'ar') pull-right @else pull-left @endif"><h2>{{__('index.Offers')}}</h2></div>
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
         
            <div class="default-shop-item">
                <!--inner-box-->
                @foreach ($Offer as $item)
            <div style="margin-bottom: 26px;" class=" col-md-4 col-sm-6 col-xs-12">
                    
                <div class="inner-box">
                    <!--image-box-->
                    <figure class="image-box">
                        
                        <a href="{{url("$lang/SingleOffer/$item->id")}}"><img style="height:230px;" src="{{asset("storage/$item->img")}}" alt="" /></a>
                    </figure>

                    <!--lower-content-->
                    <div class="lower-content">
                        <h3><a href="{{url("$lang/SingleOffer/$item->id")}}">{{ $item->getTranslatedAttribute('title',$lang) }}</a></h3>

                    

                        {{-- <div class="price">$ 25.99 <span>$ 35.99</span></div> --}}
                        <div class="links-box">
                            @php
      
                            $string =   strip_tags($item->getTranslatedAttribute('content',$lang));
                      
                          @endphp 
                            <div class="text">{!! \Illuminate\Support\Str::limit($string,200,$end='...') !!}</div>
                        <a class="cart-btn" href="{{url("$lang/SingleOffer/$item->id")}}">{{__('index.Read_More')}}</a>
                        </div>
                    </div>

                </div>
            </div>
                @endforeach

            </div>
            
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
