
@extends('front.layout')

@section('content')


    
    
    <!--Page Title-->
    <section class="page-title" style="background-image:url({{asset('front/images/background/bg-page-title-1.jpg')}});">
        <div class="auto-container">
            <h1>{{__('index.Contact_us')}}</h1>
        </div>
    </section>
    
<!--Page Info-->
<section class="page-info">
    <div class="auto-container clearfix">
        <div class="@if($lang == 'ar') pull-right @else pull-left @endif"><h2>{{__('index.Contact_us')}}</h2></div>
        <div class="@if($lang == 'ar') pull-left @else pull-right @endif">
            <ul class="bread-crumb clearfix">
                <li><a href="{{url("/$lang")}}">{{__('index.home')}}</a></li>
                <li></li>
            </ul>
        </div>
    </div>
</section>
    
    <!--Contact Section-->
    <section class="contact-section">
    	<div class="auto-container">
        	<div class="row clearfix">
                
                    <!--Form Column -->
                    <div class="column form-column col-lg-6 col-md-12 col-sm-12 col-xs-12">
                        <div class="sec-title medium"><h2>{{ __('index.Contact_us') }}</h2></div>
                        <!--form-box-->
                        <div class="form-box default-form">
                            <div class="contact-form default-form">
                                <form method="post" action="{{ url("/ContactPost") }}" id="contact-form">
                                    @csrf
                                    <div class="row clearfix">
                                    
                                    
                                    
                                        <div class="form-group col-md-12 col-sm-6 col-xs-12">
                                            <input type="text" name="username" value="" placeholder="{{ __('index.name') }} *" required>
                                        </div>
            
                                        <div class="form-group col-md-6 col-sm-6 col-xs-12">
                                            <input type="email" name="email" value="" placeholder="{{ __('index.email') }} *" required>
                                        </div>
                                        
                                        <div class="form-group col-md-6 col-sm-6 col-xs-12">
                                            <input type="text" name="phone" value="" placeholder="{{ __('index.phone') }}">
                                        </div>
                                        
                                        <div class="form-group col-md-12 col-sm-12 col-xs-12">
                                            <textarea name="message" placeholder="{{ __('index.massage') }} *"></textarea>
                                        </div>
                                        <div class="form-group col-md-12 col-sm-12 col-xs-12">
                                            <button type="submit" class="theme-btn btn-style-two">{{ __('index.Send') }}</button>
                                        </div>
                                    </div>
                                </form>
                            </div>
                        </div>
                    </div>
                
                <!--Column-->
                <div class="column info-column col-lg-6 col-md-6 col-sm-12 col-xs-12">
                <div style="margin-top: 145px;" class="info-style-one">
                        <ul>
                            <li><div class="icon-box"><span class="flaticon-international-delivery"></span></div><h4>{{ __('index.address') }} :</h4><div class="text">{{setting("contact-us.address_$lang")}}</div></li>
                            <li><div class="icon-box"><span class="flaticon-envelope"></span></div><h4>{{ __('index.email') }} :</h4><div class="text">{{setting("contact-us.email")}}</div></li>
                            <li><div class="icon-box"><span class="flaticon-phone-call"></span></div><h4>{{ __('index.phone') }} :</h4><div class="text">{{setting("contact-us.phone")}}</div></li>
                        </ul>
                    </div>
                </div>
                
            </div>    
       	</div>
   	</section>
    
    
    <!--Map Section-->
    <section class="map-section">
    	<div class="map-outer">

            <!--Map Canvas-->
            
        <iframe  src="{{setting('contact-us.map')}}" width="100%" height="450" frameborder="0" style="border:0;" allowfullscreen="" aria-hidden="false" tabindex="0"></iframe>

       
        </div>
    </section>
     





@endsection
