<!doctype html>
<html lang="{{ str_replace('_', '-', app()->getLocale()) }}">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <!-- CSRF Token -->
    <meta name="csrf-token" content="{{ csrf_token() }}">

    <title>{{ config('app.name', 'Laravel') }}</title>

    <!-- Scripts -->
    

    <!-- Fonts -->
    <link rel="dns-prefetch" href="//fonts.gstatic.com">
    <link href="https://fonts.googleapis.com/css?family=Nunito" rel="stylesheet">
    <link rel="stylesheet" href="https://fonts.googleapis.com/icon?family=Material+Icons">
    <!-- Styles -->
    <link href="{{URL::asset('css/app.css') }}" rel="stylesheet">
      <!-- Bootstrap core CSS -->
  <link href="{{ URL::asset('assets/css/bootstrap.min.css') }}" rel="stylesheet">
  <link href="{{ URL::asset('assets/css/font-awesome.min.css') }}" rel="stylesheet">

  <!-- Custom styles for this template -->
  <link href="{{ asset('assets/css/added_style.css') }}" rel="stylesheet">
</head>
<body>
    <div id="app">
      
      @yield('content')
      @include('layouts.footer')
    </div>
   
     <!-- Bootstrap core JavaScript -->
  <script src="{{ URL::asset('assets/js/jquery.min.js') }}"></script>
  <script src="{{ URL::asset('assets/js/bootstrap.bundle.min.js') }}"></script>
  <script src="{{ URL::asset('js/app.js') }}" defer></script>
<script>
  $(document).ready(function(){
    $('.switch-tologin-modal').on('click',function(){
      $('#register-modal').modal('hide');
      $('#login-modal').modal('show');
      
    })
    $('.switch-toregister-modal').on('click',function(){
      $('#login-modal').modal('hide');
      $('#register-modal').modal('show');
      
    })

    $('.hide-modal').on('click',function(){
    $('#login-modal').modal('hide');
    $(document.body).removeClass('modal-open');
    $('.modal-backdrop').remove();
      
    })
    
  })
</script>
</body>
</html>
