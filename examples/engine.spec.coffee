http = require 'restler'

describe 'engine', ->

  it 'is running', (done) ->
    verify_response http.get(engine_uri), 200, done

  it 'runs tests', ->