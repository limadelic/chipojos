{ MethodMatcher } = require './method_matcher'
{ Result } = require './result'

class @Runner

  constructor: ->
    @method = new MethodMatcher
    @result = new Result

  run_steps: (@sut, steps) -> @run_step step for step in steps

  run_step: (step) ->

    method = @method.match @sut, step.name
    return @result.missing step unless method?

    try
      @sut[method].apply @sut, step.args
      @result.passed step
    catch e
      @result.failed step, e
