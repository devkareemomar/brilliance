<?php

namespace App\Http\Controllers;

use App\Category;
use App\CategoryMaterial;
use App\Contact;
use App\Gallery;
use App\Material;
use App\News;
use App\Offer;
use App\Project;
use Illuminate\Http\Request;


use App\Service;
use App\Testimonial;
use App\Tv;

class homeController extends Controller
{
    public function index($lang){
        \App::setLocale($lang);
        $Service= Service::withTranslations()->get();
        $Category= Category::withTranslations()->get();
        $CategoryMaterial= CategoryMaterial::withTranslations()->get();
        $Material= Material::withTranslations()->get();
        $Project= Project::withTranslations()->get();
        $Testimonial= Testimonial::withTranslations()->get();
        $News= News::withTranslations()->get();
 
      
        return view('front.home',['lang'=>$lang,'Service'=>$Service,'News'=>$News,'Material'=>$Material,'Testimonial'=>$Testimonial,'Category'=>$Category,'CategoryMaterial'=>$CategoryMaterial,'Project'=>$Project]);
    }
    public function about($lang){
        \App::setLocale($lang);
      

        return view('front.about',['lang'=>$lang]);

    }
    public function AllService($lang){
        \App::setLocale($lang);
        
        $Service= Service::withTranslations()->get();

        return view('front.AllService',['lang'=>$lang,'Service'=>$Service]);

    }

    public function SingleService($lang,$id){
        \App::setLocale($lang);

        $AllService= Service::withTranslations()->get();
        
        $Service= Service::withTranslations()->where('id',$id)->first();

        return view('front.SingleService',['lang'=>$lang,'Service'=>$Service,'AllService'=>$AllService]);

    }


    public function AllProject($lang){
        \App::setLocale($lang);

        
        $Category= Category::withTranslations()->get();
        $Project= Project::withTranslations()->get();
        return view('front.AllProject',['lang'=>$lang,'Category'=>$Category,'Project'=>$Project]);

    }
    public function SingleProject($lang,$id){
        \App::setLocale($lang);
     
        
        $Project= Project::withTranslations()->where('id',$id)->first();

        return view('front.SingleProject',['lang'=>$lang,'Project'=>$Project]);

    }
    public function gallery($lang){
        \App::setLocale($lang);
     
        
        $Gallery=Gallery::withTranslations()->get();
  

        return view('front.gallery',['lang'=>$lang,'Gallery'=>$Gallery]);

    }
    public function tv($lang){
        \App::setLocale($lang);
     
        
        $Tv=Tv::withTranslations()->get();
        

        return view('front.tv',['lang'=>$lang,'Tv'=>$Tv]);

    }
    public function contact($lang){
        \App::setLocale($lang);

        return view('front.contact',['lang'=>$lang]);

    }
    public function ContactPost(Request $request){

        $request->validate([
            'username' => 'required',
            'email' => 'required|email',
            'phone' => 'required',
            'message' => 'required',
            
        ]);
        $ContactUs = new Contact();
     
        $ContactUs->name = $request->input("username");
        $ContactUs->email = $request->input("email");
        $ContactUs->phone = $request->input("phone");
        $ContactUs->message = $request->input("message");
        
        $ContactUs->save();

        alert()->success('Success Message', 'تم التواصل وسنوافيكم بالرد قريبا');
        return redirect()->back();

    }
    public function offers($lang){
        \App::setLocale($lang);
     
        
        $Offer=Offer::withTranslations()->get();
        

        return view('front.offers',['lang'=>$lang,'Offer'=>$Offer]);

    }
    public function SingleOffer($lang,$id){
     
        \App::setLocale($lang);
        
        $Offer= Offer::withTranslations()->where('id',$id)->first();
        $AllOffer= Offer::withTranslations()->get();
        

        return view('front.SingleOffer',['lang'=>$lang,'Offer'=>$Offer,'AllOffer'=>$AllOffer]);

    }
    public function SingleNews($lang,$id){
     
        \App::setLocale($lang);
        
        $News= News::withTranslations()->where('id',$id)->first();
        $AllNews= News::withTranslations()->get();

        return view('front.SingleNews',['lang'=>$lang,'News'=>$News,'AllNews'=>$AllNews]);

    }
    public function SingleMaterial($lang,$id){
        \App::setLocale($lang);
     
        
        $Material= Material::withTranslations()->where('id',$id)->first();
   

        return view('front.SingleMaterial',['lang'=>$lang,'Material'=>$Material]);

    }
}
