{ MethodMatcher } = require './method_matcher'
{ Result } = require './result'

class @Runner

  constructor: ->
    @method = new MethodMatcher
    @result = new Result

  run: (steps, @sut) -> @execute step for step in steps

  execute: (step) ->

    method = @method.match @sut, step.name
    return @result.missing step unless method?

    try
      @sut[method].apply @sut, step.args
      @result.passed step
    catch e
      @result.failed step, e
