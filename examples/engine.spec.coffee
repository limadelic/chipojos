http = require 'restler'

describe 'engine', ->

  it 'is running', (done) ->
    verify_response http.get(engine_uri), 200, done

  it 'runs tests', (done) ->

    run_uri = engine_uri + '/run'

    test = '''

      when an user logs in
      it should be greeted

    '''

    http.post(run_uri, data: test).on 'complete', (data, res) ->
      console.log data
#      verify_all_passed data
      done()

