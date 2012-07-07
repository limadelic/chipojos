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

      verify that it shows @msg when @user logs in:
        when '@user' logs in
        it should say '@msg'

      verify that it shows 'hello lizard king' when 'Jim' logs in

    '''
    , done

  it 'func with regex', (done) ->

    run '''

      verify that when @user logs in, (she|he) is greeted:
        when '@user' logs in
        it should be greeted

      verify that when 'Pam' logs in, she is greeted
      verify that when 'Jim' logs in, he is greeted

    '''
    , done
