describe 'Args', ->

  it 'simple func', (done) ->

    run '''

      verify login:
        when an user logs in
        it should be greeted

      verify login

    '''
    , done