describe 'Args', ->

  it 'says hello to jimmy', (done) ->

    run '''

      when 'Jim' logs in
      it should say 'Hello lizard king'

    '''
    , done