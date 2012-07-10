fibrous = require 'fibrous'
Fiber = require 'fibers'
{ MethodMatcher } = require './method_matcher'
{ Result } = require './result'

class @Runner

  constructor: ->
    @method_matcher = new MethodMatcher
    @result = new Result

  run_steps: (@sut, steps) -> @run_step step for step in steps

  run_step: (@step) ->

    return @result.missing @step unless @is_implemented()?

    try
      if @is_async() then @async_call() else @sync_call()
      @result.passed @step
    catch e
      @result.failed @step, e

  is_implemented: -> @method = @method_matcher.match @sut, @step.name

  is_async: -> @method.length is @step.args.length + 1

  sync_call: -> @method.apply @sut, @step.args

  async_call: fibrous ->
      async_wrap = (done) => @method.apply @sut, @step.args.concat [done]
      sync.async_wrap ->

