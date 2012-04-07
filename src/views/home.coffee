div class:'row', ->

  img src:'img/logo-body.png', alt:'Chipojo'

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

div class:'row', ->

  div class:'span4', ->
    h2 -> 'Green When Healthy'
    p -> img src:'img/green-scales.png'
    p -> 
      a class:'btn', href:'#', ->
        'View details &raquo;'

  div class:'span4', ->
    h2 -> 'Alerts with a Red Flag'
    p -> img src:'img/red-dewlap.png'
    p -> 'How wide is this image. There are a lot of words here. are they big enough.'
    p -> 
      a class:'btn', href:'#', ->
        'View details &raquo;'

  div class:'span4', ->
    h2 -> 'Catches Bugs'
    p -> img src:'img/bugs.png'
    p -> 
      a class:'btn', href:'#', ->
        'View details &raquo;'
