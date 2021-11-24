<!DOCTYPE html>
<html lang="en">
    <!-- header -->
    @include('admin._layout.header')
    <body onload="startTime()">
        <div class="loader-wrapper">
        <div class="loader-index"><span></span></div>
        <svg>
            <defs></defs>
            <filter id="goo">
            <fegaussianblur in="SourceGraphic" stddeviation="11" result="blur"></fegaussianblur>
            <fecolormatrix in="blur" values="1 0 0 0 0  0 1 0 0 0  0 0 1 0 0  0 0 0 19 -9" result="goo"> </fecolormatrix>
            </filter>
        </svg>
        </div>
        <!-- tap on top starts-->
        <div class="tap-top"><i data-feather="chevrons-up"></i></div>
        <!-- tap on tap ends-->
        <!-- page-wrapper Start-->
        <div class="page-wrapper compact-wrapper" id="pageWrapper">
            <!-- page header -->
            @include('admin._layout.nav')
            <!-- Page Body Start-->
            <div class="page-body-wrapper">

                <!-- sidebar -->
                @include('admin._layout.sidebar')

                <!-- body -->
                @yield('content')

                <!-- Footer Missing-->
                @include('admin._layout.footer')
            </div>

        </div>
        @include('admin._layout.script')
    </body>
</html>