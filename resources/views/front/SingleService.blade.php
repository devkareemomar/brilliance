@extends('front.layout')

@section('content')


   <!--Page Title-->
   <section class="page-title" style="background-image:url({{asset('front/images/background/bg-page-title-1.jpg')}});">
    <div class="auto-container">
        <h1>{{  $Service->getTranslatedAttribute('title',$lang) }}</h1>
    </div>
</section>

<!--Page Info-->
<section class="page-info">
    <div class="auto-container clearfix">
        <div class="@if($lang == 'ar') pull-right @else pull-left @endif""><h2>{{  $Service->getTranslatedAttribute('title',$lang) }}</h2></div>
        <div class="@if($lang == 'ar') pull-left @else pull-right @endif"">
            <ul class="bread-crumb clearfix">
                <li><a href="{{url("/$lang")}}">{{__('index.home')}}</a></li>
                <li></li>
                
            </ul>
        </div>
    </div>
</section>


<!--Sidebar Page-->
<div class="sidebar-page-container">
    <div class="auto-container">
        <div class="row clearfix">
              
            
            <!--Sidebar-->      
            <div class="sidebar-side col-lg-3 col-md-4 col-sm-12 col-xs-12">
                <aside class="sidebar">
                    
                    <!--Sidebar Widget / Boxed Nav-->
                    <div class="widget sidebar-widget styled-nav">
                        <nav class="nav-outer">
                            <ul>
                                @foreach ($AllService as $item)
                                    
                                <li><a href="{{ url("$lang/SingleService/$item->id") }}">{{  $item->getTranslatedAttribute('title',$lang) }}</a></li>
                                @endforeach
                                
                            </ul>
                        </nav>
                    </div>
                    
 
                    
                   
                    
                </aside>
            </div><!--End Sidebar--> 
            
            <!--Content Side-->      
            <div class="content-side col-lg-9 col-md-8 col-sm-12 col-xs-12">
                <!--Service Single-->
                <section class="service-details">
                    <!--Service Images-->
                    <div dir="ltr" class="service-images">
                        <ul class="single-item-carousel">
                            @php
         
                                $images = json_decode($Service->img); 
                            
                            @endphp 

                            @foreach ($images as $img)
                                
                            <li><figure class="image-box"><a href="{{asset("storage/$img")}}" class="lightbox-image" title="Image Caption Here"><img style="height: 452px;" src="{{asset("storage/$img")}}" alt=""></a></figure></li>
                         
                            @endforeach
                          
                            
                        </ul>
                        <div class="link-box-outer"><a href="portfolio-default.html" class="theme-btn">More Pictures</a></div>
                    </div>
                    
                       <div class="sec-title"><h2>{{  $Service->getTranslatedAttribute('title',$lang) }}</h2></div>
                    <!--Text Content-->
                    <div class="text-content">
                        <p>{!! $Service->getTranslatedAttribute('content',$lang) !!}</p>
                  </div>
                    

                    
                    <!--Get Quote-->
                    <div class="get-quote">
                        <div class="sec-title medium"><h2>Get Free Quatation</h2></div>
                        
                        <div class="row clearfix">
                          
                            
                            <!--Form Column-->
                            <div class="column col-lg-12 col-md-12 col-sm-12 col-xs-12">
                                <!--form-box-->
                                <div class="form-box default-form">
                                    <div class="contact-form default-form">
                                        <form method="post" action="http://world5.commonsupport.com/html2/decorators/contact.html">
                                            <div class="row clearfix">
                                            
                                                <div class="form-group col-md-6 col-sm-6 col-xs-12">
                                                    <select>
                                                        <option>Wooden Flooring</option>
                                                        <option>Metal Flooring</option>
                                                        <option>Concrete Flooring</option>
                                                    </select>
                                                </div>
                                            
                                                <div class="form-group col-md-6 col-sm-6 col-xs-12">
                                                    <input type="text" name="username" value="" placeholder="Your Name *" required>
                                                </div>
                    
                                                <div class="form-group col-md-6 col-sm-6 col-xs-12">
                                                    <input type="email" name="email" value="" placeholder="Your Mail *" required>
                                                </div>
                                                
                                                <div class="form-group col-md-6 col-sm-6 col-xs-12">
                                                    <input type="text" name="number" value="" placeholder="Phone Number">
                                                </div>
                                                
                                                <div class="form-group col-md-12 col-sm-12 col-xs-12">
                                                    <textarea name="message" placeholder="Message *"></textarea>
                                                </div>
                                                <div class="form-group col-md-12 col-sm-12 col-xs-12">
                                                    <button type="submit" class="theme-btn btn-style-two">Get Quote</button>
                                                </div>
                                            </div>
                                        </form>
                                    </div>
                                </div>
                            </div>
                            
                        </div>
                    </div>
                    
                </section>
            </div><!--End Content Side-->     
            
        </div>
    </div>
</div>





@endsection
