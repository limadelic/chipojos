#require './spec_helper'
{ Parser } = require '../src/server/parser'
{ Runner } = require '../src/server/runner'
{ Login } = require './fixtures/login'

root = exports ? @

root.run = (test, done) ->
  steps = new Parser().parse test
  results = new Runner().run steps, new Login()
  console.log results
  done()
#  verify_all_passed results, done

verify_all_passed = (results, done) ->
  for { result } in results
    expect(result).toEqual true
  done()