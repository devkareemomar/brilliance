<!DOCTYPE html>
<html>

<!-- Mirrored from world5.commonsupport.com/html2/decorators/ by HTTrack Website Copier/3.x [XR&CO'2014], Thu, 27 Feb 2020 13:16:25 GMT -->

<head>
    <meta charset="utf-8">
    <title>{{__('index.BrillianceFor')}}</title>
    <!-- Stylesheets -->
    <link href="{{asset('front/css/bootstrap.css')}}" rel="stylesheet">
	<link href="{{asset('front/css/revolution-slider.css')}}" rel="stylesheet">
	
	@if($lang =='ar')
	<link href="{{asset('front/css/stylertl.css')}}" rel="stylesheet">
	@else
	<link href="{{asset('front/css/style.css')}}" rel="stylesheet">
	@endif

  <link rel="shortcut icon" href="{{asset('front/images/fav.png')}}" type="image/x-icon">
    <link rel="icon" href="{{asset('front/images/fav.png')}}" type="image/x-icon">
    <!-- Responsive -->
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0">
	<link href="{{asset('front/css/responsive.css')}}" rel="stylesheet">
	<link rel="stylesheet" type="text/css" href="https://www.fontstatic.com/f=hanimation" />
    <!--[if lt IE 9]><script src="https://cdnjs.cloudflare.com/ajax/libs/html5shiv/3.7.3/html5shiv.js"></script><![endif]-->
    <!--[if lt IE 9]><script src="js/respond.js"></script><![endif]-->
</head>

<body @if($lang =='ar') dir="rtl" @endif>

    <div class="page-wrapper">

        <!-- Preloader -->
        <div class="preloader"></div>

        <!-- Main Header-->
        <header class="main-header">
            <!-- Header Top -->
            <div class="header-top">
                <div class="auto-container">
                    <div class="row clearfix">

                        <!--Top Left-->
                        <div class="top-left pull-right">
                            <div class="dropdown lang-dropdown">
                                <button class="btn btn-primary dropdown-toggle" type="button" data-toggle="dropdown"> @if($lang == 'ar') <img src="{{asset('front/images/icons/AR_Flag.jpg')}}" alt="" /> &nbsp; العربيه @elseif($lang =='en') <img src="{{asset('front/images/icons/flog.png')}}" alt="" /> &nbsp; English  @endif <span class="fa fa-angle-down"></span></button>
                                <ul class="dropdown-menu">
									@if($lang =='ar')
                                    <li><a href="{{ url('/en') }}">English</a></li>
									@elseif($lang == 'en')
									<li><a href="{{ url('/ar') }}">العربيه</a></li>
									@endif

                                    
                                </ul>
                            </div>
                        </div>

                        <!--Top Right-->
                        <div class="top-right pull-left">

                            <!--social-icon-->
                            <div class="social-icon">
                            <a target="_blank" href="{{setting('sochial.facebook')}}"><span class="fa fa-facebook"></span></a>
                            <a target="_blank" href="{{setting('sochial.twitter')}}"><span class="fa fa-twitter"></span></a>
                            <a target="_blank" href="{{setting('sochial.youtube')}}"><span class="fa fa-youtube"></span></a>
                               <a target="_blank" href="{{setting('sochial.instagram')}}"><span class="fa fa-instagram"></span></a>
                            </div>

                            <ul>
                            <li><span class="fa fa-envelope-o"></span>{{setting("contact-us.email")}}</li>
                                <li><span class="fa fa-phone"></span>{{setting("contact-us.phone")}}</li>
                                <li><span class="fa fa-location-arrow"></span>{{setting("contact-us.address_$lang")}}</li>
                            </ul>


                        </div>

                    </div>

                </div>
            </div>
            <!-- Header Top End -->


            <!-- Main Box -->
            <div class="main-box">
                <div class="auto-container">
                    <div class="outer-container clearfix">
                        <!--Logo Box-->
                        <div class="logo-box">
                            <div class="logo">
                                <a href="{{ url("$lang") }}"><img style="height: 60px;" @if($lang == 'ar') src="{{asset('front/images/logo.png')}}" @else  src="{{asset('front/images/logo2.png')}}" @endif alt=""></a>
                            </div>
                        </div>

                        <!--Nav Outer-->
                        <div class="nav-outer clearfix">
                            <!-- Main Menu -->
                            <nav class="main-menu">
                                <div class="navbar-header">
                                    <!-- Toggle Button -->
                                    <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
                                <span class="icon-bar"></span>
                                <span class="icon-bar"></span>
                                <span class="icon-bar"></span>
                                </button>
                                </div>

                                <div class="navbar-collapse collapse clearfix">
                                    <ul class="navigation clearfix">
                                        <li class="current"><a href="{{ url("$lang") }}">{{__('index.home')}}</a></li>
                                        <li><a href="{{url("$lang/services")}}">{{__('index.Our_service')}}</a></li>
                                        <li ><a href="{{url("$lang/AllProject")}}">{{__('index.Our_projects')}}</a></li>
                                        <li><a href="{{url("$lang/photo")}}">{{__('index.Gallery')}}</a>
                                              
                                            </li>
                                            <li><a href="{{url("$lang/b_tv")}}">{{__('index.Brilliance')}}</a>
                                               
                                            </li>
                    
                                            <li><a href="{{url("$lang/offerr")}}">{{__('index.Offers')}}</a>
                                               
                                            </li>
                    
                                            <li ><a href="{{ url("$lang/about") }}"> {{__('index.About')}}</a></li>
                    
                                            <li><a href="{{ url("$lang/contact_us") }}">{{__('index.Contact_us')}}</a></li>
                                    </ul>
                                </div>
                            </nav>
                            <!-- Main Menu End-->

                        </div>
                        <!--Nav Outer End-->

                        <!-- Hidden Nav Toggler -->
                        <div class="nav-toggler">
                            <button class="hidden-bar-opener"><span class="icon fa fa-bars"></span></button>
                        </div>
                        <!-- / Hidden Nav Toggler -->


                    </div>
                </div>
            </div>

        </header>
        <!--End Main Header -->


        <!-- Hidden Navigation Bar -->
        <section class="hidden-bar right-align">

            <div class="hidden-bar-closer">
                <button class="btn"><i class="fa fa-close"></i></button>
            </div>

            <!-- Hidden Bar Wrapper -->
            <div class="hidden-bar-wrapper">

                <!-- .logo -->
                <div class="logo text-center">
                    <a href="{{ url("$lang") }}"><img  @if($lang == 'ar') src="{{asset('front/images/logo.png')}}" @else  src="{{asset('front/images/logo2.png')}}" @endif alt=""></a>
                </div>
                <!-- /.logo -->

                <!-- .Side-menu -->
                <div class="side-menu">
                    <!-- .navigation -->
                    <ul class="navigation ">
                    <li class="current"><a href="{{ url("$lang") }}">{{__('index.home')}}</a></li>
                    <li><a href="{{url("$lang/services")}}">{{__('index.Our_service')}}</a></li>
                    <li ><a href="{{url("$lang/AllProject")}}">{{__('index.Our_projects')}}</a></li>
                    <li><a href="{{url("$lang/photo")}}">{{__('index.Gallery')}}</a>
                          
                        </li>
                        <li><a href="{{url("$lang/b_tv")}}">{{__('index.Brilliance')}}</a>
                           
                        </li>

                        <li><a href="{{url("$lang/offerr")}}">{{__('index.Offers')}}</a>
                           
                        </li>

                        <li ><a href="{{ url("$lang/about") }}"> {{__('index.About')}}</a></li>

                        <li><a href="{{ url("$lang/contact_us") }}">{{__('index.Contact_us')}}</a></li>

                    </ul>
              
                </div>
                <!-- /.Side-menu -->

                <div class="social-icons">
                    <ul>
                        <li><span class="fa fa-envelope-o"></span>{{setting("contact-us.email")}}</li>
                        <li><span class="fa fa-phone"></span>{{setting("contact-us.phone")}}</li>
                        <li><span class="fa fa-location-arrow"></span>{{setting("contact-us.address_$lang")}}</li>
                    </ul>
                </div>

            </div>
            <!-- / Hidden Bar Wrapper -->
        </section>
        <!-- / Hidden Bar -->


        <!-- end: Header -->
        <!-- Page title -->
        @yield('content')
        <!-- end: Content -->
        <!-- Footer -->
     <!--Main Footer-->
	 <footer class="main-footer" style="background-image:url({{asset('front/images/background/footer-bg.jpg')}});">
		<div class="auto-container">

			<!--Widgets Section-->
			<div class="widgets-section">
				<div class="row clearfix">
					<!--Big Column-->
					<div class="big-column col-md-6 col-sm-12 col-xs-12">
						<div class="row clearfix">
							<!--Footer Column-->
						
                            <!--Footer Column-->
                            <div class="footer-column col-md-6 col-sm-6 col-xs-12">
								
								<div class="footer-widget gallery-widget">
									<h2>{{ __('index.Our_projects') }}</h2>
									<div class="gallery-widget-carousel" dir="ltr">
                                        @php
                              
                                        $Project =   App\Project::withTranslations()->get();

        
                                        @endphp 
                                        @foreach ($Project as $item)
                                            
										<div class="item">
                                            @php
                                        $images = json_decode($item->img); 
                                                
                                            @endphp
                                          
                                                
                                            <figure class="post-thumb"><img style="height:60px;" src="{{asset("storage/$images[0]")}}" alt=""><a href="{{url("$lang/SingleProject/$item->id")}}" class="overlay-link"><span class="fa fa-link"></span></a></figure>
                                            
                                            
										</div>
                                        @endforeach
									
									
									</div>
								</div>
							</div>
							<div class="footer-column col-md-6 col-sm-6 col-xs-12">
								<div class="footer-widget posts-widget">
                                    <h2>{{ __('index.latest_news') }}</h2>
                                    @php
                              
                                    $News =   App\News::withTranslations()->get();
    
                                    @endphp 
                                        
									<div class="widget-content">
										<div class="posts">
                                    @foreach ($News as $item)

											<div class="post">
												<figure class="post-thumb"><img style="height:60px;" src="{{asset("storage/$item->img")}}" alt=""><a href="{{url("$lang/SingleNews/$item->id")}}" class="overlay-link"><span class="flaticon-plus-1"></span></a></figure>
												<div class="desc-text"><a href="{{url("$lang/SingleNews/$item->id")}}">{{ $item->getTranslatedAttribute('title') }}</a></div>
												{{-- <div class="time"><span class="fa fa-clock-o"></span> Oct 03, 2015</div> --}}
                                            </div>
                                    @endforeach
                                            
										</div>
										{{-- <a class="view-more theme-btn" href="">{{ __('index.Read_More') }}<span class="fa fa-caret-left"></span></a> --}}
                                    </div>
                                    
								</div>
							</div>



						</div>
					</div>

					<div class="big-column col-md-6 col-sm-12 col-xs-12">
						<div class="row clearfix">

							<!--Footer Column-->

							<!--Footer Column-->
							<div class="footer-column col-md-6 col-sm-6 col-xs-12">
								<div class="footer-widget contact-widget">
									<h2>{{ __('index.Contact_us') }}</h2>
                                    <div style="    border: none;" class="form-box default-form">
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
							</div>
							<div class="footer-column col-md-6 col-sm-6 col-xs-12">
								<div class="footer-widget about-widget">
									<div class="footer-logo">
										<figure>
											<a href="index-2.html"><img style="height: 50px;" src="{{asset('front/images/logo.png')}}" alt=""></a>
										</figure>
									</div>
									<div class="widget-content">
										<div class="text">{!! setting("about-us.WeProfessional_$lang") !!}</div>
										<ul class="contact-info">
											<li><span class="icon fa fa-map-marker"></span>{{setting("contact-us.address_$lang")}}</li>
											<li><span class="icon fa fa-phone"></span>{{setting("contact-us.phone")}}</li>
											<li><span class="icon fa fa-envelope-o"></span>{{setting("contact-us.email")}}</li>
										</ul>
									</div>
								</div>
							</div>

						</div>
					</div>

					<!--Big Column-->

				</div>
			</div>

		</div>

		<!--Footer Bottom-->
		<div class="footer-bottom">
			<div class="auto-container">
				<div class="clearfix">
					<div class="pull-left">
						<div class="copyright">Copyrights &copy; 2016 All Rights Reserved by &ensp; <a target="_blank" href="http://www.psmedia-eg.com/" class="styled-font author-name">Psmedia</a></div>
					</div>
					<div class="pull-right">
						<ul class="footer-nav">
                            <li class="current"><a href="{{ url("$lang") }}">{{__('index.home')}}</a></li>
                            <li><a href="{{url("$lang/services")}}">{{__('index.Our_service')}}</a></li>
                            <li ><a href="{{url("$lang/AllProject")}}">{{__('index.Our_projects')}}</a></li>
                            <li><a href="{{url("$lang/photo")}}">{{__('index.Gallery')}}</a>
                                  
                                </li>
                                <li><a href="#">{{__('index.Brilliance')}}</a>
                                   
                                </li>
        
                                <li><a href="#">{{__('index.Offers')}}</a>
                                   
                                </li>
        
                                <li ><a href="{{ url("$lang/about") }}"> {{__('index.About')}}</a></li>
        
                                <li><a href="">{{__('index.Contact_us')}}</a></li>
						</ul>
					</div>
				</div>
			</div>
		</div>
	</footer>


</div>
<!--End pagewrapper-->


<!--Search Popup-->
<div id="search-popup" class="search-popup">
	<div class="close-search theme-btn"><span class="flaticon-unchecked"></span></div>
	<div class="popup-inner">

		<div class="search-form">
			<form method="post" action="http://world5.commonsupport.com/html2/decorators/index.html">
				<div class="form-group">
					<fieldset>
						<input type="search" class="form-control" name="search-input" value="" placeholder="Search Here" required>
						<input type="submit" value="Search" class="theme-btn">
					</fieldset>
				</div>
			</form>

			<br>
			<h3>Recent Search Keywords</h3>
			<ul class="recent-searches">
				<li><a href="#">Business</a></li>
				<li><a href="#">Web Development</a></li>
				<li><a href="#">SEO</a></li>
				<li><a href="#">Logistics</a></li>
				<li><a href="#">Freedom</a></li>
			</ul>

		</div>

	</div>
</div>

<!--Scroll to top-->
<div class="scroll-to-top scroll-to-target" data-target=".main-header"><span class="fa fa-long-arrow-up"></span></div>


<script src="{{asset('front/js/jquery.js')}}"></script>
<script src="{{asset('front/js/bootstrap.min.js')}}"></script>
<script src="{{asset('front/js/jquery.mCustomScrollbar.concat.min.js')}}"></script>
<script src="{{asset('front/js/revolution.min.js')}}"></script>
<script src="{{asset('front/js/jquery.fancybox.pack.js')}}"></script>
<script src="{{asset('front/js/jquery.fancybox-media.js')}}"></script>
<script src="{{asset('front/js/isotope.js')}}"></script>
<script src="{{asset('front/js/owl.js')}}"></script>
<script src="{{asset('front/js/mixitup.js')}}"></script>
<script src="{{asset('front/js/wow.js')}}"></script>
<script src="{{asset('front/js/nouislider.js')}}"></script>
<script src="{{asset('front/js/jquery.bootstrap-touchspin.js')}}"></script>
<script src="{{asset('front/js/validate.js')}}"></script>
<script src="{{asset('front/js/script.js')}}"></script>

<!--Google Map APi Key-->
<script src="http://maps.google.com/maps/api/js?key="></script>
<script src="{{asset('front/js/map-script.js')}}"></script>
<!--End Google Map APi-->
<script src="https://cdnjs.cloudflare.com/ajax/libs/sweetalert/2.1.2/sweetalert.min.js" integrity="sha256-KsRuvuRtUVvobe66OFtOQfjP8WA2SzYsmm4VPfMnxms=" crossorigin="anonymous"></script>
@include('sweet::alert')
</body>

<!-- Mirrored from world5.commonsupport.com/html2/decorators/ by HTTrack Website Copier/3.x [XR&CO'2014], Thu, 27 Feb 2020 13:19:03 GMT -->

</html>
	