{ MethodMatcher } = require './method_matcher'
{ Result } = require './result'

class @Runner

  constructor: ->
    @method_matcher = new MethodMatcher
    @result = new Result

  run_steps: (@sut, steps) ->
    @results = []
    process.on 'uncaughtException', @exception

    @run_step step for step in steps

    process.removeListener 'uncaughtException', @exception
    @results

  run_step: (@step) ->

    return @missing() unless @is_implemented()?

    try

      if @is_async() then @sync.async_call() else @sync_call()

      @pass()
    catch e
      @fail e

  missing: -> @record @result.missing @step
  pass: -> @record @result.passed @step
  fail: (e) -> @record @result.failed @step, e

  record: (result) -> @results.push result

  exception: (e) =>
    @fail e
    @done()

  is_implemented: -> @method = @method_matcher.match @sut, @step.name

  is_async: -> @method.length is @step.args.length + 1

  sync_call: -> @call @step.args

  async_call: (@done) -> @call @step.args.concat [@done]

  call: (args) -> @method.apply @sut, args

