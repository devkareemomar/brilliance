
@extends('front.layout')

@section('content')


        <!--Main Slider-->
        <section class="main-slider">

            <div class="tp-banner-container">
                <div class="tp-banner">
                    <ul>

                        <li data-transition="fade" data-slotamount="1" data-masterspeed="1000" data-thumb="images/main-slider/image-1.jpg" data-saveperformance="off" data-title="Awesome Title Here">
                            <img src="{{asset('front/images/main-slider/image-1.jpg')}}" alt="" data-bgposition="center top" data-bgfit="cover" data-bgrepeat="no-repeat">

                            <div class="tp-caption sfl sfb tp-resizeme" @if($lang == 'ar') data-x="right" @else data-x="left" @endif data-hoffset="15" data-y="center" data-voffset="-100" data-speed="1500" data-start="0" data-easing="easeOutExpo" data-splitin="none" data-splitout="none" data-elementdelay="0.01" data-endelementdelay="0.3"
                                data-endspeed="1200" data-endeasing="Power4.easeIn">
                        <h2>{{__('index.BrillianceFor')}} <br> {{__('index.For_all')}} </h2>
                            </div>

                            <div class="tp-caption sfl sfb tp-resizeme" @if($lang == 'ar') data-x="right" @else data-x="left" @endif data-hoffset="15" data-y="center" data-voffset="40" data-speed="1500" data-start="500" data-easing="easeOutExpo" data-splitin="none" data-splitout="none" data-elementdelay="0.01" data-endelementdelay="0.3"
                                data-endspeed="1200" data-endeasing="Power4.easeIn">
                                <div class="text">{{__('index.20year_experience')}}</div>
                            </div>

                            <div class="tp-caption sfr sfb tp-resizeme"  @if($lang == 'ar') data-x="right" @else data-x="left" @endif data-hoffset="15" data-y="center" data-voffset="140" data-speed="1500" data-start="1000" data-easing="easeOutExpo" data-splitin="none" data-splitout="none" data-elementdelay="0.01" data-endelementdelay="0.3"
                                data-endspeed="1200" data-endeasing="Power4.easeIn"><a href="{{url("$lang/services")}}" class="theme-btn btn-style-one">{{__('index.Our_service')}}</a> &ensp; <a href="#" class="theme-btn btn-style-two">{{__('index.Contact_us')}}</a></div>


                        </li>

                        <li data-transition="fade" data-slotamount="1" data-masterspeed="1000" data-thumb="images/main-slider/image-2.jpg" data-saveperformance="off" data-title="Awesome Title Here">
                            <img src="{{asset('front/images/main-slider/image-2.jpg')}}" alt="" data-bgposition="center top" data-bgfit="cover" data-bgrepeat="no-repeat">

                            <div class="tp-caption sfl sfb tp-resizeme" data-x="center" data-hoffset="0" data-y="center" data-voffset="-100" data-speed="1500" data-start="0" data-easing="easeOutExpo" data-splitin="none" data-splitout="none" data-elementdelay="0.01" data-endelementdelay="0.3"
                                data-endspeed="1200" data-endeasing="Power4.easeIn">
                        <h2>{{__('index.SolutionFor_Living')}}</h2>
                            </div>

                            <div class="tp-caption sfl sfb tp-resizeme" data-x="center" data-hoffset="0" data-y="center" data-voffset="0" data-speed="1500" data-start="500" data-easing="easeOutExpo" data-splitin="none" data-splitout="none" data-elementdelay="0.01" data-endelementdelay="0.3"
                                data-endspeed="1200" data-endeasing="Power4.easeIn">
                                <div class="text text-center">{{__('index.Decorating_Decorators')}}<br>{{__('index.homeor_office')}}</div>
                            </div>

                            <div class="tp-caption sfr sfb tp-resizeme" data-x="center" data-hoffset="15" data-y="center" data-voffset="100" data-speed="1500" data-start="1000" data-easing="easeOutExpo" data-splitin="none" data-splitout="none" data-elementdelay="0.01" data-endelementdelay="0.3"
                                data-endspeed="1200" data-endeasing="Power4.easeIn"><a href="{{url("$lang/services")}}" class="theme-btn btn-style-one">{{__('index.Our_service')}}</a> &ensp; <a href="#" class="theme-btn btn-style-two">{{__('index.Contact_us')}}</a></div>


                        </li>

                        <li data-transition="fade" data-slotamount="1" data-masterspeed="1000" data-thumb="images/main-slider/image-3.jpg" data-saveperformance="off" data-title="Awesome Title Here">
                            <img src="{{asset('front/images/main-slider/image-3.jpg')}}" alt="" data-bgposition="center top" data-bgfit="cover" data-bgrepeat="no-repeat">

                            <div class="tp-caption sfl sfb tp-resizeme" data-x="left" data-hoffset="500" data-y="center" data-voffset="-100" data-speed="1500" data-start="0" data-easing="easeOutExpo" data-splitin="none" data-splitout="none" data-elementdelay="0.01" data-endelementdelay="0.3"
                                data-endspeed="1200" data-endeasing="Power4.easeIn">
                        <h2>{{__('index.WeGive_Life')}}</h2>
                            </div>

                            <div class="tp-caption sfl sfb tp-resizeme" data-x="left" data-hoffset="500" data-y="center" data-voffset="40" data-speed="1500" data-start="500" data-easing="easeOutExpo" data-splitin="none" data-splitout="none" data-elementdelay="0.01" data-endelementdelay="0.3"
                                data-endspeed="1200" data-endeasing="Power4.easeIn">
                                <div class="text">{{__('index.Decorating_Decorators')}}<br>{{__('index.homeor_office')}}</div>
                            </div>

                            <div class="tp-caption sfr sfb tp-resizeme" data-x="left" data-hoffset="500" data-y="center" data-voffset="140" data-speed="1500" data-start="1000" data-easing="easeOutExpo" data-splitin="none" data-splitout="none" data-elementdelay="0.01" data-endelementdelay="0.3"
                                data-endspeed="1200" data-endeasing="Power4.easeIn"><a href="{{url("$lang/services")}}" class="theme-btn btn-style-one">{{__('index.Our_service')}}</a> &ensp; <a href="#" class="theme-btn btn-style-two">{{__('index.Contact_us')}}</a></div>


                        </li>

                    </ul>

                    <div class="tp-bannertimer"></div>
                </div>
            </div>
        </section>

        <!--welcome-section-->
        <section class="welcome-section">
            <div class="auto-container">
                <div class="row clearfix">

                        <!--welcome-column-->
                    <div class="col-md-6 col-sm-12 col-xs-12 welcome-column">
                        <!--inner-content-->
                        <div class="inner-content wow fadeInLeft" data-wow-delay="0ms" data-wow-duration="1500ms">
                        <h2>{{setting("about-us.title_$lang")}}</h2>
                        {!! setting("about-us.content_$lang") !!}
                            <figure class="signature">
                                <img src="{{asset('front/images/icons/signature.png')}}" alt="" />
                            </figure>

                            <!--author-title-->
                            <div class="author-title">
                        {!! setting("about-us.EndContent_$lang") !!}
                              
                            </div>
                        </div>
                    </div>
                    <!--service-column-->
                    <div class="col-md-6 col-sm-12 col-xs-12 service-column">
                        <!--service-block-one-->
                        <div class="service-block-one">
                            <div class="inner-box">
                                <!--icon-block-->
                                <div class="icon-box">
                                    <span class="flaticon-avatar-1"></span>
                                </div>
                        {!! setting("about-us.WeProfessional_$lang") !!}

                             </div>
                        </div>
                        <!--service-block-one-->
                        <div class="service-block-one">
                            <div class="inner-box">
                                <!--icon-block-->
                                <div class="icon-box">
                                    <span class="flaticon-correct"></span>
                                </div>
                                {!! setting("about-us.WeTrusted_$lang") !!}
                            </div>
                        </div>
                        <!--service-block-one-->
                        <div class="service-block-one">
                            <div class="inner-box">
                                <!--icon-block-->
                                <div class="icon-box">
                                    <span class="flaticon-compass"></span>
                                </div>
                                {!! setting("about-us.WeExpert_$lang") !!}
                              
                            </div>
                        </div>

                    </div>
                  
                </div>
            </div>
        </section>


        <!--best-service-section-->
        <section class="best-service-section">
            <div class="auto-container">

                <!--sec-title-->
                <div class="sec-title clearfix">
                  
                <h2 class="@if($lang == 'ar') pull-right @else pull-left @endif">{{__('index.OurBest_Services')}}</h2>
                    <a class="service-link @if($lang == 'ar') pull-left @else pull-right @endif" href="{{url("$lang/services")}}">{{ __('index.More_Services') }} <span class="@if($lang == 'ar') fa fa-caret-left @else fa fa-caret-right @endif"></span></a>
                    
                </div>

                <div class="row clearfix">

                    <!--service-block-two-->
                    @foreach ($Service as $item)
                        
                    <div class="service-block-two col-lg-4 col-md-6 col-sm-12 col-xs-12">
                        <!--inner-box-->
                        <div class="inner-box wow fadeIn" data-wow-delay="0ms" data-wow-duration="1500ms">
                            <div class="image-layer" style="background-image:url({{asset("'front/images/resource/service-block-two-bg.jpg'")}})"></div>
                            <!--icon-box-->
                            <div class="icon-box">
                                <span class="flaticon-improvement"></span>
                            </div>

                            <h3>{{  $item->getTranslatedAttribute('title',$lang) }}</h3>
                            @php
                          
                            $string =   strip_tags($item->getTranslatedAttribute('content',$lang));
                            // $images = json_decode($service->service_img); 
                          @endphp 
                            <div class="text">{!! \Illuminate\Support\Str::limit($string,150,$end='...') !!}</div>
                            <a href="{{ url("$lang/SingleService/$item->id") }}" class="read-more">{{__('index.Read_More')}}</a>

                            <!--bottom-icon-->
                            <div class="bottom-icon">
                                <span class="flaticon-improvement"></span>
                            </div>

                        </div>
                    </div>

                    @endforeach

                  

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
                       <li class="active filter" data-role="button" data-filter="all">{{ __('index.All_projects') }}</li>  
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


       


        {{-- <!--default-two-column-->
        <section class="default-two-column">
            <div class="auto-container">
                <div class="row clearfix">
                    <div class="column form-column col-md-6 col-sm-12">
                        <!--sec-title-three-->
                        <div class="sec-title-three">
                            <div class="sub-title">Request for</div>
                            <h2>Free Quotation</h2>
                        </div>

                        <!--form-box-->
                        <div class="form-box default-form wow fadeInRight" data-wow-delay="0ms" data-wow-duration="1500ms">
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
                    <div class="column spec-column col-md-6 col-sm-12">
                        <!--sec-title-three-->
                        <div class="sec-title-three">
                            <div class="sub-title">Decorators</div>
                            <h2>Characteristics</h2>
                        </div>
                        <div class="text">All this mistaken idea of denouncing pleasure and praising pain was born and I will give you a complete account of the system, and expound the ut actual teachings of the great explorer of the truth the master-builder of human happiness.</div>
                        <!--specs-->
                        <div class="specs clearfix">
                            <div class="row clearfix">
                                <!--spec-block-->
                                <div class="spec-block col-lg-6 col-md-12 col-sm-12 col-xs-12">
                                    <!--spec-block-->
                                    <div class="inner-box">
                                        <!--icon-box-->
                                        <div class="icon-box">
                                            <span class="flaticon-improvement"></span>
                                        </div>
                                        <h3>All Types of Color</h3>
                                        <div class="text">According to Interior design pedia, a great way to get our ideas for color palette.</div>
                                    </div>
                                </div>

                                <div class="spec-block col-lg-6 col-md-12 col-sm-12 col-xs-12">
                                    <!--spec-block-->
                                    <div class="inner-box">
                                        <!--icon-box-->
                                        <div class="icon-box">
                                            <span class="flaticon-fabric"></span>
                                        </div>
                                        <h3>Fabrics Pattern</h3>
                                        <div class="text">In addition to beautiful silks & fabrics, you could pattern and textured finishes.</div>
                                    </div>
                                </div>

                                <div class="spec-block col-lg-6 col-md-12 col-sm-12 col-xs-12">
                                    <!--spec-block-->
                                    <div class="inner-box">
                                        <!--icon-box-->
                                        <div class="icon-box">
                                            <span class="flaticon-layers"></span>
                                        </div>
                                        <h3>Concrete Floor</h3>
                                        <div class="text">Polished concrete floor work great in modern design, tiles, marble, and granite.</div>
                                    </div>
                                </div>

                                <div class="spec-block col-lg-6 col-md-12 col-sm-12 col-xs-12">
                                    <!--spec-block-->
                                    <div class="inner-box">
                                        <!--icon-box-->
                                        <div class="icon-box">
                                            <span class="flaticon-dinner"></span>
                                        </div>
                                        <h3>Dark Furnitures</h3>
                                        <div class="text">Dark, solid wooden furniture will realy help to get this one concept on the right track.</div>
                                    </div>
                                </div>

                            </div>
                        </div>
                    </div>


                </div>
            </div>
        </section> --}}


        
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

        <!--tabbed-shop-section-->
        <section dir="ltr" class="tabbed-shop-section">
            <div class="auto-container">

                <div class="sec-title-four">
                <h2>{{__('index.The_materialsused')}}</h2>
                </div>

                <!--Shop Tabs Box-->
                <div class="shop-tabs-box">
                    <!--Tab Buttons-->
                    <ul class="tab-buttons">
                        @foreach ($CategoryMaterial as $item)
                            
                        <li data-tab="#{{ $item->id }}" class="tab-btn @if($item->id == 1) active-btn @endif">{{ $item->getTranslatedAttribute('title',$lang) }}</li>
                        @endforeach
                        
                    </ul>

                    <!--Tabs Content-->
                    <div class="tabs-content">
                        <!--Tab / Active Tab-->
                        @foreach ($CategoryMaterial as $it)
         
                        <div class="shop-tab @if($it->id == 1) active-tab @endif" id="{{ $it->id }}">
                            <div class="tabbed-shop-carousel">
                                @php
                              
                                $Material =   App\Material::withTranslations()->where('category_id',$it->id)->get();

                                @endphp 
                         
                                @foreach ($Material as $item)

                                <div class="default-shop-item">
                                    <!--inner-box-->
                                    <div class="inner-box">
                                        <!--image-box-->
                                        <figure class="image-box">
                                            @php
         
                                            $images = json_decode($item->img); 
                                        
                                            @endphp 
                                            <a href="{{url("$lang/SingleMaterial/$item->id")}}"><img style="height:230px;" src="{{asset("storage/$images[0]")}}" alt="" /></a>
                                        </figure>

                                        <!--lower-content-->
                                        <div class="lower-content">
                                            <h3><a href="{{url("$lang/SingleMaterial/$item->id")}}">{{ $item->getTranslatedAttribute('title',$lang) }}</a></h3>

                                            <div class="rating">
                                                <span class="fa fa-star"></span>
                                                <span class="fa fa-star"></span>
                                                <span class="fa fa-star"></span>
                                                <span class="fa fa-star"></span>
                                                <span class="fa fa-star"></span>
                                            </div>

                                            {{-- <div class="price">$ 25.99 <span>$ 35.99</span></div> --}}
                                            <div class="links-box">
                                                @php
                          
                                                $string =   strip_tags($item->getTranslatedAttribute('content',$lang));
                                          
                                              @endphp 
                                                <div class="text">{!! \Illuminate\Support\Str::limit($string,100,$end='...') !!}</div>
                                            <a class="cart-btn" href="{{url("$lang/SingleMaterial/$item->id")}}">{{__('index.Read_More')}}</a>
                                            </div>
                                        </div>

                                    </div>
                                </div>
                                @endforeach

                            </div>
                        </div>
                        @endforeach

                      

                    </div>

                </div>
            </div>
        </section>
<!--testimonial-style-one-->
<section class="testimonial-style-one" dir="ltr" style="background-image:url({{asset('front/images/background/image-2.jpg')}});">
    <div class="auto-container">
        <div class="row">

            <div class="carousel-outer">
                <div class="icon fa fa-quote-left"></div>
                <div class="single-item-carousel">

                    <!--Slide Item-->
                    @foreach ($Testimonial as $item)
                        
                    <div class="slide-item">
                        <div class="inner-box">
                        <div class="slide-text"> {!! $item->getTranslatedAttribute('content',$lang) !!}</div>
                            <!--auther-info-->
                            <div class="auther-info">
                                <div class="image"><img src="{{asset("storage/$item->img")}}" alt="" /></div>
                                <div class="auther-name"> {{$item->getTranslatedAttribute('name',$lang)}}</div>
                                <div class="designation"> {{$item->getTranslatedAttribute('job',$lang)}}</div>
                            </div>
                        </div>
                    </div>
                    @endforeach

                </div>
            </div>

        </div>
    </div>
</section>

        <!--Sponsors Section-->
        {{-- <section dir="ltr" class="sponsors-section">
            <div class="auto-container">
                <!--Sponsors SLider-->
                <ul class="sponsors-carousel">
                    <li>
                        <div class="inner-box">
                            <figure class="image-box"><img src="images/clients/1.png" alt=""></figure>
                            <div class="overlay-box">
                                <div class="overlay-inner">
                                    <div class="overlay-content"><span class="count">+5</span><span class="text">Years<br>Experince</span></div>
                                </div>
                            </div>
                        </div>
                    </li>
                    <li>
                        <div class="inner-box">
                            <figure class="image-box"><img src="images/clients/2.png" alt=""></figure>
                            <div class="overlay-box">
                                <div class="overlay-inner">
                                    <div class="overlay-content"><span class="count">+2</span><span class="text">Years<br>Experince</span></div>
                                </div>
                            </div>
                        </div>
                    </li>
                    <li>
                        <div class="inner-box">
                            <figure class="image-box"><img src="images/clients/3.png" alt=""></figure>
                            <div class="overlay-box">
                                <div class="overlay-inner">
                                    <div class="overlay-content"><span class="count">+6</span><span class="text">Years<br>Experince</span></div>
                                </div>
                            </div>
                        </div>
                    </li>
                    <li>
                        <div class="inner-box">
                            <figure class="image-box"><img src="images/clients/4.png" alt=""></figure>
                            <div class="overlay-box">
                                <div class="overlay-inner">
                                    <div class="overlay-content"><span class="count">+3</span><span class="text">Years<br>Experince</span></div>
                                </div>
                            </div>
                        </div>
                    </li>
                    <li>
                        <div class="inner-box">
                            <figure class="image-box"><img src="images/clients/5.png" alt=""></figure>
                            <div class="overlay-box">
                                <div class="overlay-inner">
                                    <div class="overlay-content"><span class="count">+1</span><span class="text">Years<br>Experince</span></div>
                                </div>
                            </div>
                        </div>
                    </li>
                    <li>
                        <div class="inner-box">
                            <figure class="image-box"><img src="images/clients/1.png" alt=""></figure>
                            <div class="overlay-box">
                                <div class="overlay-inner">
                                    <div class="overlay-content"><span class="count">+5</span><span class="text">Years<br>Experince</span></div>
                                </div>
                            </div>
                        </div>
                    </li>
                    <li>
                        <div class="inner-box">
                            <figure class="image-box"><img src="images/clients/2.png" alt=""></figure>
                            <div class="overlay-box">
                                <div class="overlay-inner">
                                    <div class="overlay-content"><span class="count">+2</span><span class="text">Years<br>Experince</span></div>
                                </div>
                            </div>
                        </div>
                    </li>
                    <li>
                        <div class="inner-box">
                            <figure class="image-box"><img src="images/clients/3.png" alt=""></figure>
                            <div class="overlay-box">
                                <div class="overlay-inner">
                                    <div class="overlay-content"><span class="count">+6</span><span class="text">Years<br>Experince</span></div>
                                </div>
                            </div>
                        </div>
                    </li>
                    <li>
                        <div class="inner-box">
                            <figure class="image-box"><img src="images/clients/4.png" alt=""></figure>
                            <div class="overlay-box">
                                <div class="overlay-inner">
                                    <div class="overlay-content"><span class="count">+3</span><span class="text">Years<br>Experince</span></div>
                                </div>
                            </div>
                        </div>
                    </li>
                    <li>
                        <div class="inner-box">
                            <figure class="image-box"><img src="images/clients/5.png" alt=""></figure>
                            <div class="overlay-box">
                                <div class="overlay-inner">
                                    <div class="overlay-content"><span class="count">+1</span><span class="text">Years<br>Experince</span></div>
                                </div>
                            </div>
                        </div>
                    </li>
                    <li>
                        <div class="inner-box">
                            <figure class="image-box"><img src="images/clients/1.png" alt=""></figure>
                            <div class="overlay-box">
                                <div class="overlay-inner">
                                    <div class="overlay-content"><span class="count">+5</span><span class="text">Years<br>Experince</span></div>
                                </div>
                            </div>
                        </div>
                    </li>
                    <li>
                        <div class="inner-box">
                            <figure class="image-box"><img src="images/clients/2.png" alt=""></figure>
                            <div class="overlay-box">
                                <div class="overlay-inner">
                                    <div class="overlay-content"><span class="count">+2</span><span class="text">Years<br>Experince</span></div>
                                </div>
                            </div>
                        </div>
                    </li>
                    <li>
                        <div class="inner-box">
                            <figure class="image-box"><img src="images/clients/3.png" alt=""></figure>
                            <div class="overlay-box">
                                <div class="overlay-inner">
                                    <div class="overlay-content"><span class="count">+6</span><span class="text">Years<br>Experince</span></div>
                                </div>
                            </div>
                        </div>
                    </li>
                    <li>
                        <div class="inner-box">
                            <figure class="image-box"><img src="images/clients/4.png" alt=""></figure>
                            <div class="overlay-box">
                                <div class="overlay-inner">
                                    <div class="overlay-content"><span class="count">+3</span><span class="text">Years<br>Experince</span></div>
                                </div>
                            </div>
                        </div>
                    </li>
                    <li>
                        <div class="inner-box">
                            <figure class="image-box"><img src="images/clients/5.png" alt=""></figure>
                            <div class="overlay-box">
                                <div class="overlay-inner">
                                    <div class="overlay-content"><span class="count">+1</span><span class="text">Years<br>Experince</span></div>
                                </div>
                            </div>
                        </div>
                    </li>
                </ul>
            </div>
        </section> --}}


        <!--News Section-->
        <section dir="ltr" class="news-section">
            <div class="auto-container">

                <div class="sec-title-four">
                    <h2>{{ __('index.latest_news') }} </h2>
                </div>


                <div class="news-carousel two-column-carousel">

                    <!--News Style One-->
                    @foreach ($News as $item)
                        
                    <div class="news-style-one">
                        <div class="inner-box">
                            <div class="row clearfix">
                                <div  class="image-column col-md-5 col-sm-6 col-xs-12">
                                <figure class="image-box"><img style="height:230px" src="{{asset("storage/$item->img")}}" alt=""><a class="overlay-link" href="{{url("$lang/SingleNews/$item->id")}}"><span class="icon flaticon-plus-1"></span></a></figure>
                                </div>
                                <div @if($lang == 'ar') dir="rtl" @endif class="content-column col-md-7 col-sm-6 col-xs-12">
                                    <div class="content">
                                        <h3><a href="{{url("$lang/SingleNews/$item->id")}}">{{ $item->getTranslatedAttribute('title',$lang) }}</a></h3>
                                        {{-- <ul class="post-meta clearfix">
                                            <li><a href="#"><span class="icon fa fa-clock-o"></span> Oct 03, 2015</a></li>
                                            <li><a href="#"><span class="icon fa fa-tags"></span> Furniture</a></li>
                                        </ul> --}}
                                        @php
                          
                                        $string =   strip_tags($item->getTranslatedAttribute('content',$lang));
                                  
                                      @endphp 
                                        <div class="text">{!! \Illuminate\Support\Str::limit($string,250,$end='...') !!}</div>
                                        <div class="author-info">
                                            {{-- <figure class="author-thumb"><img src="{{asset('front/images/resource/author-thumb-1.jpg')}}" alt=""></figure> --}}
                                            <h4>{{ $item->getTranslatedAttribute('name',$lang) }}</h4>
                                           
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>

                    @endforeach
               

                </div>

            </div>
        </section>

        {{-- <!--Newsletter Style One-->
        <section class="newsletter-style-one">
            <div class="auto-container">
                <div class="row clearfix">


                    <!--Form Column-->
                    <div class="form-column col-lg-8 col-md-12 col-sm-12">
                        <div class="inner-box">
                            <form method="post" action="http://world5.commonsupport.com/html2/decorators/contact.html">
                                <div class="row clearfix">


                                    <div class="col-lg-3 col-md-3 col-sm-12 col-xs-12">
                                        <button type="submit" class="theme-btn">Subscribe</button>
                                    </div>
                                    <div class="col-lg-9 col-md-9 col-sm-12 col-xs-12">
                                        <div class="row clearfix">


                                            <div class="col-lg-6 col-md-6 col-sm-6 col-xs-12">
                                                <div class="form-group">
                                                    <span class="floated-icon fa fa-envelope"></span>
                                                    <input type="email" name="email" value="" placeholder="Your Email" required>
                                                </div>
                                            </div>
                                            <div class="col-lg-6 col-md-6 col-sm-6 col-xs-12">
                                                <div class="form-group">
                                                    <span class="floated-icon fa fa-user"></span>
                                                    <input type="text" name="email" value="" placeholder="Your Name" required>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </form>
                        </div>
                    </div>
                    <div class="title-column col-lg-4 col-md-12 col-sm-12">
                        <h2>Newsletter Signup</h2>
                        <div class="text">We send you latest news couple a month ( No Spam).</div>
                    </div>
                </div>
            </div>
        </section> --}}


@endsection
