#require './spec_helper'

root = exports ? @

root.run = (test, done) ->
  results = {}
  verify_all_passed results, done

verify_all_passed = (results, done) ->
  expect(results).toEqual {}
  done()