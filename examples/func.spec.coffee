describe 'Args', ->

  it 'simple func', (done) ->

    run '''

      verify login:
        when an user logs in
        it should be greeted

      verify login

    '''
    , done

  it 'func with args', (done) ->

    run '''

      verify it shows $msg when $user logs in:
        when '$user' logs in
        it should say '$msg'

      verify it shows 'hello lizard king' when 'Jim' logs in

    '''
    , done
