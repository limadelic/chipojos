Sync = require 'sync'
{ MethodMatcher } = require './method_matcher'
{ Result } = require './result'

class @Runner

  constructor: ->
    @method_matcher = new MethodMatcher
    @result = new Result

  run_steps: (@sut, steps) -> @run_step step for step in steps

  run_step: (@step) =>

    return @result.missing @step unless @step_implemented()?

    try
      if @is_async_step() then @async_call() else @sync_call()
      @result.passed @step
    catch e
      @result.failed @step, e

  step_implemented: -> @method = @method_matcher.match @sut, @step.name

  is_async_step: -> @method.length is @step.args.length + 1

  sync_call: -> @method.apply @sut, @step.args

  async_call: ->

    async_wrap = (done) => @method.apply @sut, @step.args.concat [done]

    Sync -> async_wrap.sync null

