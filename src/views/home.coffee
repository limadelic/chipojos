div class:'logo-body', -> img src:'img/logo-body.png', alt:'Chipojo'

div class:'span5 offset1', ->

  div class:'hero-unit', ->
    h1 -> 'El Chipojos'
    p ->
      '''
      Green when healthy. Alerts you with a red flag
      when there are problems. Catches bugs.
      '''

    p ->
      a class:'btn btn-primary btn-large', href:'#', ->
        'Learn more &raquo;'
