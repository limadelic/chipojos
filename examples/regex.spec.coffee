describe 'Args', ->

  it 'says hello to jimmy', (done) ->

    run '''

      when she logs in
      it should greet her

      when he logs in
      it should greet him

    '''
    , done