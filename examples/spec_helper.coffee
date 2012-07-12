#require './spec_helper'
require 'fibrous/lib/jasmine_spec_helper'

{ Parser } = require '../src/server/parsers/parser'
{ Runner } = require '../src/server/runner'
{ Login } = require './fixtures/login'

root = exports ? @

root.run = (test) ->
  steps = new Parser().parse test
  sut = new Login
  new Runner().run_steps sut, steps

root.should = require 'should'

verify_all_passed = (results) ->
#  console.log results
  expect(passed).toEqual true for { passed } in results

root.test = (test) ->
  verify_all_passed run test
