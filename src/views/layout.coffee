# layout.coffee
doctype 5
html lang:'en', ->
  head ->
    meta charset:'utf-8'
    title -> 'Chipojos - Go Green'
    meta name:'viewport', content:'width=device-width, initial-scale=1.0'
    meta name:'description', content:'Chipojos is a cloud-based automated acceptance test tool'
    meta name:'author', content:'limadelic'

    link href:'css/bootstrap.css', rel:'stylesheet'
    link href:'css/bootstrap-responsive.css', rel:'stylesheet'
    link href:'css/site.css', rel:'stylesheet'

    link rel:'shortcut icon', href:'ico/favicon.ico'
    link rel:'apple-touch-icon-precomposed', sizes:'114x114', href:'ico/apple-touch-icon-114-precomposed.png'
    link rel:'apple-touch-icon-precomposed', sizes:'72x72', href:'ico/apple-touch-icon-72-precomposed.png'
    link rel:'apple-touch-icon-precomposed', href:'ico/apple-touch-icon-57-precomposed.png'

  body ->

    div class:'navbar navbar-fixed-top', ->
      div class:'navbar-inner', ->
        div class:'container', ->
          a class:'btn btn-navbar', 'data-toggle':'collapse', 'data-target':'.nav-collapse', ->
            span class:'icon-bar'
            span class:'icon-bar'
            span class:'icon-bar'
          div class:'nav-collapse landing-header', ->
            img class:'logo-header', src:'img/logo-header.png'

    div class:'btn-primary container container-main', ->
      div class:'logo-body', -> img src:'img/logo-body.png', alt:'Chipojo'
      @body

    footer ->
      p class:'container', -> '&copy; limadelic 2012'

    script src:'//ajax.googleapis.com/ajax/libs/jquery/1.7.2/jquery.min.js', type:'text/javascript'
    script src:'js/bootstrap.js'
  