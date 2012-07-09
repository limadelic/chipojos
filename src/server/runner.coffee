async = require 'async'

{ MethodMatcher } = require './method_matcher'
{ Result } = require './result'

class @Runner

  constructor: ->
    @method = new MethodMatcher
    @result = new Result
    @queue = async.queue @run_step, 1

  run_steps: (@sut, steps) -> @queue.push step for step in steps

  run_step: (step, done) =>
    console.log 1

    method = @method.match @sut, step.name
    return @result.missing step unless method?

    try
      @sut[method].apply @sut, step.args
      @result.passed step
      done()
    catch e
      @result.failed step, e
      done()
