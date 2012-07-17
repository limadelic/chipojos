{ Parser } = require './parsers/parser'
{ Runner } = require './runner/runner'
{ Login } = require '../../examples/fixtures/login'

class @EngineService

  constructor: ->
    @parser = new Parser
    @runner = new Runner
    @sut = new Login

  run: (test) ->
    @runner.run_steps @sut,
      @parser.parse test
