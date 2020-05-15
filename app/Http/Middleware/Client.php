<?php

namespace App\Http\Middleware;

use Closure;
use Illuminate\Support\Facades\Auth;

class Client
{
    /**
     * Handle an incoming request.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \Closure  $next
     * @return mixed
     */
    public function handle($request, Closure $next, $guard = null)
    {
        // \App::setLocale($lang);

        if (!Auth::guard($guard)->check()) {
            return redirect("ar/log_in");
        }

        return $next($request);
    }
}

