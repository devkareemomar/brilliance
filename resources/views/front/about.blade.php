@extends('front.layout')

@section('content')


    <!--Page Title-->
    <section class="page-title" style="background-image:url({{asset('front/images/background/bg-page-title-1.jpg')}});">
        <div class="auto-container">
        <h1>{{__('index.About')}}</h1>
        </div>
    </section>
    
     <!--Page Info-->
     <section class="page-info">
        <div class="auto-container clearfix">
            <div class="@if($lang == 'ar') pull-right @else pull-left @endif"><h2>{{__('index.About')}}</h2></div>
            <div class="@if($lang == 'ar') pull-left @else pull-right @endif">
                <ul class="bread-crumb clearfix">
                <li><a href="{{url("$lang")}}">{{__('index.home')}}</a></li>
                <li></li>
                    
                </ul>
            </div>
        </div>
    </section>
    
    <!--About Us Section-->
    <section class="about-us-section">
    	<div class="auto-container">
        	<div class="row clearfix">
                
                <!--Text Column -->
            	<div class="column text-column col-md-6 col-sm-12 col-xs-12">
                	<h2>{{setting("about-us.title_$lang")}}</a></h2>
                    <div class="inner-box">
                        {!! setting("about-us.content_$lang") !!}
                         <div class="signature-image"><img src="{{asset('front/images/resource/signature.png')}}" alt=""></div>
                         <div class="about-owner">
                            {!! setting("about-us.EndContent_$lang") !!}

                         </div>
                    </div>
                </div>
                
                <!--Column-->
                <div class="column image-column col-md-6 col-sm-12 col-xs-12">
                	<article class="inner-box wow fadeInRight" data-wow-delay="0ms" data-wow-duration="1500ms">
                		<figure class="image-box video-box">
                            @php
                              $img =  setting("about-us.img") 
                                
                            @endphp
                        	<img src="{{asset("storage/$img")}}" alt="">
                            <a href="{!! setting("about-us.video") !!}" class="lightbox-image video-link"><div class="icon"><span class="flaticon-play-button-5"></span></div></a>
                        </figure>
                    </article>
                </div>
                
            </div>
            
            <!--Our Services-->
            <div class="our-services">
            	<div class="row clearfix">
                	<!--service-block-one-->
                	<div class="service-block-one col-md-4 col-sm-6 col-xs-12">
                    	<div class="inner-box wow fadeIn" data-wow-delay="0ms" data-wow-duration="1500ms">
                            <!--icon-block-->
                            <div class="icon-box">
                                <span class="flaticon-cursor"></span>
                            </div>
                            {!! setting("about-us.WeProfessional_$lang") !!}
                        </div>
                    </div>
                    <!--service-block-one-->
                    <div class="service-block-one col-md-4 col-sm-6 col-xs-12">
                    	<div class="inner-box wow fadeIn" data-wow-delay="300ms" data-wow-duration="1500ms">
                            <!--icon-block-->
                            <div class="icon-box">
                                <span class="flaticon-compass"></span>
                            </div>
                            {!! setting("about-us.WeExpert_$lang") !!}

                        </div>
                    </div>
                    <!--service-block-one-->
                    <div class="service-block-one col-md-4 col-sm-6 col-xs-12">
                    	<div class="inner-box wow fadeIn" data-wow-delay="600ms" data-wow-duration="1500ms">
                            <!--icon-block-->
                            <div class="icon-box">
                                <span class="flaticon-correct"></span>
                            </div>
                            {!! setting("about-us.WeTrusted_$lang") !!}

                        </div>
                    </div>
                    
                </div>
            </div>
            
        </div>
    </section>
    
    
    <!--best-service-two-->
    <section class="best-service-two" style="background-image:url({{asset('front/images/background/image-4.jpg')}});">
    	<div class="auto-container">
        	
            <!--sec-title-->
            <div class="sec-title-four">
            <h2>{{__('index.Why_Best')}}</h2>
            </div>
            
        	<div class="row clearfix">
            
                
                <!--service-block-two-->
                <div class="service-block-three col-md-4 col-sm-6 col-xs-12">
                	<!--inner-box-->
                	<a class="inner-box wow fadeInLeft" data-wow-delay="0ms" data-wow-duration="1500ms">
                    	<div class="icon-box"><span class="flaticon-house"></span></div>
                        <h3>{{ setting("why-we-are-best.25years_$lang") }}</h3>
                    </a>
                </div>
                
                <!--service-block-two-->
                <div class="service-block-three col-md-4 col-sm-6 col-xs-12">
                	<!--inner-box-->
                	<a class="inner-box wow fadeInLeft" data-wow-delay="300ms" data-wow-duration="1500ms">
                    	<div class="icon-box"><span class="flaticon-users"></span></div>
                        <h3>{{ setting("why-we-are-best.Exclusive_$lang") }}</h3>
                    </a>
                </div>
                
                <!--service-block-two-->
                <div class="service-block-three col-md-4 col-sm-6 col-xs-12">
                	<!--inner-box-->
                	<a  class="inner-box wow fadeInLeft" data-wow-delay="600ms" data-wow-duration="1500ms">
                    	<div class="icon-box"><span class="flaticon-bright-lightbulb"></span></div>
                        <h3>{{ setting("why-we-are-best.Innovative_$lang") }}</h3>
                    </a>
                </div>
                
                <!--service-block-two-->
                <div class="service-block-three col-md-4 col-sm-6 col-xs-12">
                	<!--inner-box-->
                	<a  class="inner-box wow fadeInLeft" data-wow-delay="0ms" data-wow-duration="1500ms">
                    	<div class="icon-box"><span class="flaticon-compass"></span></div>
                        <h3>{{ setting("why-we-are-best.BestQuality_$lang") }}</h3>
                    </a>
                </div>
                
                <!--service-block-two-->
                <div class="service-block-three col-md-4 col-sm-6 col-xs-12">
                	<!--inner-box-->
                	<a class="inner-box wow fadeInLeft" data-wow-delay="300ms" data-wow-duration="1500ms">
                    	<div class="icon-box"><span class="flaticon-like-1"></span></div>
                        <h3>{{ setting("why-we-are-best.Business_$lang") }}</h3>
                    </a>
                </div>
                
                <!--service-block-two-->
                <div class="service-block-three col-md-4 col-sm-6 col-xs-12">
                	<!--inner-box-->
                	<a  class="inner-box wow fadeInLeft" data-wow-delay="600ms" data-wow-duration="1500ms">
                    	<div class="icon-box"><span class="flaticon-stopwatch"></span></div>
                        <h3>{{ setting("why-we-are-best.Online_$lang") }}</h3>
                    </a>
                </div>
                
                
            </div>
        </div>
    </section>
    
    

    
    <!--Fact Counter-->
    {{-- <section class="fact-counter" style="background-image:url(images/background/image-3.jpg);">
    	<div class="auto-container">
        	<div class="row clearfix">
            	<div class="counter-outer clearfix">
                    <!--Column-->
                    <article class="column counter-column col-md-3 col-sm-6 col-xs-12 wow fadeIn" data-wow-duration="0ms">
                        <div class="icon"><span class="flaticon-houses"></span></div>
                        <div class="count-outer"><span class="count-text" data-speed="3000" data-stop="2345">0</span></div>
                        <h4 class="counter-title">Project Completed</h4>
                    </article>
                    
                    <!--Column-->
                    <article class="column counter-column col-md-3 col-sm-6 col-xs-12 wow fadeIn" data-wow-duration="0ms">
                        <div class="icon"><span class="flaticon-users"></span></div>
                        <div class="count-outer"><span class="count-text" data-speed="1000" data-stop="440">0</span> +</div>
                        <h4 class="counter-title">Creative Designers</h4>
                    </article>
                    
                    <!--Column-->
                    <article class="column counter-column col-md-3 col-sm-6 col-xs-12 wow fadeIn" data-wow-duration="0ms">
                        <div class="icon"><span class="flaticon-cup"></span></div>
                        <div class="count-outer"><span class="count-text" data-speed="1000" data-stop="1200">0</span></div>
                        <h4 class="counter-title">Winning Awards</h4>
                    </article>
                    
                    <!--Column-->
                    <article class="column counter-column col-md-3 col-sm-6 col-xs-12 wow fadeIn" data-wow-duration="0ms">
                        <div class="icon"><span class="flaticon-paper-plane-1"></span></div>
                        <div class="count-outer"><span class="count-text" data-speed="1000" data-stop="1400">0</span> +</div>
                        <h4 class="counter-title">Innovative Concepts</h4>
                    </article>
                </div>
            </div>
        </div>
    </section> --}}
    
    

    


@endsection
