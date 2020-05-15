
@extends('front.layout')

@section('content')




<!--Page Title-->
<section class="page-title" style="background-image:url({{asset('front/images/background/bg-page-title-1.jpg')}});">
    <div class="auto-container">
    <h1>{{$Material->getTranslatedAttribute('title',$lang)}}</h1>
    </div>
</section>

    <!--Page Info-->
    <section class="page-info">
        <div class="auto-container clearfix">
            <div class="@if($lang == 'ar') pull-right @else pull-left @endif"><h2>{{  $Material->getTranslatedAttribute('title',$lang) }}</h2></div>
            <div class="@if($lang == 'ar') pull-left @else pull-right @endif">
                <ul class="bread-crumb clearfix">
                <li><a href="{{url("$lang")}}">{{__('index.home')}}</a></li>
                <li></li>
                    
                </ul>
            </div>
        </div>
    </section>


<!--Project Details Section-->
<section class="project-details">
    <div class="auto-container" style="border: 1px solid #e9e9e9;border-radius: 3px;">
        
        <!--Project Images-->
        <div class="project-images">
            <div class="row clearfix">
                <!--Image Column-->
                @php
         
                $images = json_decode($Material->img);
                // dd($images); 
            
                @endphp 
            @foreach ($images as $img)
                
                <div class="image-column @if($images[0] == $img) col-lg-8  col-md-12 col-sm-12 col-xs-12 @else col-lg-4 col-md-4 col-sm-6 col-xs-12 @endif ">
                    <figure class="image-box"><a href="{{ asset("storage/$img") }}" class="lightbox-image" title="Image Caption Here"><img style="height:389px" src="{{ asset("storage/$img") }}" alt=""></a></figure>
                </div>
            @endforeach

            </div>
        </div>
        
        <!--Project Content-->
        <div class="project-content">
            <h2>{{$Material->getTranslatedAttribute('title',$lang)}}</h2>
            <div class="row clearfix">
                <!--Content Column-->
                <div style="width:100%;" class="content-column col-lg-9 col-md-8 col-sm-12 col-xs-12">
                    <div class="text">{!! $Material->getTranslatedAttribute('content',$lang) !!}</div>
                   
                </div>
            
                
                
            </div>
        </div>
        
     
        
    </div>
</section>
@endsection
