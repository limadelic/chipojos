{ Parser } = require '../../src/engine/parsers/parser'
{ Runner } = require '../../src/engine/runner/runner'
{ Login } = require '../fixtures/login'

global.run = (test) ->
  steps = new Parser().parse test
  sut = new Login
  new Runner().run_steps sut, steps

global.test = (test) ->
  verify_all_passed run test