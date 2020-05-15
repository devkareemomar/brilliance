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



<!--Sidebar Page-->
<div class="sidebar-page-container">
    <div class="auto-container">
        <div class="row clearfix">
            
            <!--Content Side-->      
            <div  style="@if($lang =='ar') float: right; @endif width: 100%;" class="content-side col-lg-9 col-md-8 col-sm-12 col-xs-12">
                
                <!--Product Details Section-->
                <section class="products-section product-details no-padd-top no-padd-bottom">
                    <!--Basic Details-->
                    <div class="basic-details">
                        <div class="row clearfix">
                            <div class="image-column col-md-5 col-sm-6 col-xs-12">
                            <figure class="image-box"><img style="height:382px;" class="img-responsive" src="{{asset("storage/$Offer->img")}}" alt=""></figure>
                            </div>
                            <div class="info-column col-md-7 col-sm-6 col-xs-12">
                                <div class="details-header">
                                    <h4>{{$Offer->getTranslatedAttribute('title',$lang)}}</h4>
                                    {{-- <div class="rating"><span class="fa fa-star"></span> <span class="fa fa-star"></span> <span class="fa fa-star"></span> <span class="fa fa-star"></span> <span class="fa fa-star"></span> <span class="txt">(2 Reviews)</span></div> --}}
                                    
                                    
                                </div>
                                
                                <div class="text">
                                    <p>{!! $Offer->getTranslatedAttribute('content',$lang) !!} </p>
                                </div>
                           
                                
                
                            </div>
                        </div>
                    </div><!--Basic Details-->
                    
                    <!--Product Info Tabs-->
                    <div class="product-info-tabs">
                        
                        <!--Product Tabs-->
                        <div class="prod-tabs" id="product-tabs">
                        
                            <!--Tab Btns-->
                            <div class="tab-btns clearfix" style="@if($lang == 'ar') left: 1063px; @endif">
                            <a href="#prod-description" class="tab-btn active-btn">{{__('index.Description')}}</a>
                                {{-- <a href="#prod-reviews" class="tab-btn active-btn">Reviews ( 2 )</a>  --}}
                            </div>
                            
                            <!--Tabs Container-->
                            <div class="tabs-container">
                                
                                <!--Tab-->
                                <div class="tab active-tab" id="prod-description">
                                   
                                    <div class="content">
                                        {!! $Offer->getTranslatedAttribute('description',$lang) !!}
                                    </div>
                                </div>
                                
                              
                                
                            </div>
                        </div>
                        
                    </div>
                    
                </section>
                        
                <!--Related Products Section-->
                <section  class="related-products">
                <div class="sec-title medium"><h2>{{__('index.Other_offers')}}</h2></div>
                    
                    <div dir="ltr" class="related-items-carousel">
                @foreach ($AllOffer as $item)
                        
                        <div  class="default-shop-item">
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
                                        <div class="text">{!! \Illuminate\Support\Str::limit($string,100,$end='...') !!}</div>
                                    <a class="cart-btn" href="{{url("$lang/SingleOffer/$item->id")}}">{{__('index.Read_More')}}</a>
                                    </div>
                                </div>
            
                            </div>
                        </div>
                        @endforeach
                    </div>
                </section>
            </div><!--End Content Side-->   
            
       
            
        </div>
    </div>
</div>












@endsection
