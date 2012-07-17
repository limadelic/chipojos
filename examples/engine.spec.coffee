http = require 'restler'

describe 'engine', ->

  it 'is running', (done) ->
    verify_response http.get(engine_uri), 200, done

  it 'runs tests', (done) ->

    run_uri = engine_uri + '/run'

    test =
      name: 'UserLogin'
      content: '''

        when an user logs in
        it should be greeted

      '''

    http.postJson(run_uri, test).on 'complete', (data, res) ->
      verify_all_passed data
      done()

