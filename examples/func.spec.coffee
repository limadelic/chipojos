describe 'Args', ->

  it 'says hello to jimmy', (done) ->

    run '''

      verify login:
        when an user logs in
        it should be greeted

      verify login

    '''
    , done