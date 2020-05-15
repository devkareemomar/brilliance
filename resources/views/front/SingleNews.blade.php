@extends('front.layout')

@section('content')




    <!--Page Title-->
    <section class="page-title" style="background-image:url({{asset('front/images/background/bg-page-title-1.jpg')}});">
        <div class="auto-container">
        <h1>{{$News->getTranslatedAttribute('title',$lang)}}</h1>
        </div>
    </section>
    
    <!--Page Info-->
    <section class="page-info">
        <div class="auto-container clearfix">
            <div class="@if($lang == 'ar') pull-right @else pull-left @endif"><h2>{{  $News->getTranslatedAttribute('title',$lang) }}</h2></div>
            <div class="@if($lang == 'ar') pull-left @else pull-right @endif">
                <ul class="bread-crumb clearfix">
                <li><a href="{{url("$lang")}}">{{__('index.home')}}</a></li>
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
                <div class="content-side col-lg-9 col-md-8 col-sm-12 col-xs-12">
                    
                    <!--News Section-->
                    <section class="news-section large-image-view blog-details no-padd-top no-padd-bottom">
                        
                        <!--News Style One / Boxed-->
                        <div class="news-style-one boxed">
                            <div class="inner-box">
                                <figure class="image-box"><img style="height: 474px;" src="{{asset("storage/$News->img")}}" alt=""></figure>
                                <div class="content">
                                 <h3><a >{{$News->getTranslatedAttribute('title',$lang)}}</a></h3>
                                 {{-- <ul class="post-meta clearfix">
                                     <li><a href="#"><span class="icon fa fa-clock-o"></span> Aug 21, 2015</a></li>
                                     <li><a href="#"><span class="icon fa fa-tags"></span> Painting</a></li>
                                     <li><a href="#"><span class="icon fa fa-eye"></span> 55 Views</a></li>
                                     <li><a href="#"><span class="icon fa fa-comments"></span> 22 Comments</a></li>
                                 </ul> --}}
                                 <div class="text">
                                     <p>{!! $News->getTranslatedAttribute('content',$lang) !!}</p>
                                 </div>
                                    <div class="post-bottom clearfix">
                                 <div class="text">بواسطة: {{ $News->getTranslatedAttribute('name',$lang) }} </div>
                                    
                                    </div>
                                </div>
                            </div>
                        </div>
                        
                    
                    </section>
                
                </div><!--End Content Side-->   
                
                <!--Sidebar-->      
                <div class="sidebar-side col-lg-3 col-md-4 col-sm-6 col-xs-12">
                    <aside class="sidebar">
                        
                    
                        
                        <!-- Recent Posts -->
                        <div class="widget recent-posts sidebar-widget">
                            <div class="sidebar-title"><h3>أخبار شائعة</h3></div>
                            @foreach ($AllNews as $item)
                                
                            <div class="post">
                                <figure class="post-thumb"><img style="height:65px;" src="{{ asset("storage/$item->img") }}" alt=""><a href="{{url("$lang/SingleNews/$item->id")}}" class="overlay-link"><span class="flaticon-plus-1"></span></a></figure>
                            <h4><a href="{{url("$lang/SingleNews/$item->id")}}">{{ $item->getTranslatedAttribute('title',$lang) }}</a></h4>
                                <div class="post-meta"><a><span class="fa fa-user"></span> {{ $item->getTranslatedAttribute('name',$lang) }}</a></div>
                            </div>
                            @endforeach
                         
                            
                        </div>
                            <hr/>
                  
                        
                    </aside>
                </div><!--End Sidebar-->      
                
            </div>
        </div>
    </div>
      





@endsection
