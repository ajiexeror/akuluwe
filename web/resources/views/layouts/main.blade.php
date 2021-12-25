<!DOCTYPE html>
<html lang="en">
    <meta http-equiv="content-type" content="text/html;charset=UTF-8" /><!-- /Added by HTTrack -->

<head>
    <title>{{ $title }} | {{ $system_title }}</title>

    @include('layouts.header')

</head>

<body>

    <div class="loader-bg">
        <div class="loader-bar"></div>
    </div>

    <div id="pcoded" class="pcoded">
        <div class="pcoded-overlay-box"></div>
        <div class="pcoded-container navbar-wrapper">

            @include('layouts.nav-header')

            <div class="pcoded-main-container">
                <div class="pcoded-wrapper">
                    
                    @include('layouts.sidebar')
                    @yield('container')

                </div>
            </div>
        </div>
    </div>

    @include('layouts.footer')

</body>

</html>