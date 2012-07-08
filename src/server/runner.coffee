class @Runner

  run: (steps, @sut) -> for step in steps
    step: step.text
    passed: @execute @method(step.name), step.args
    message: @message

  method: (@step) -> @literal() ? @regex()

  literal: -> @step if @sut[@step]?

  regex: -> return method for method of @sut when @step.match method

  execute: (method, args) ->
    @message = undefined
    return undefined unless method?
    try
      @sut[method].apply @sut, args
      true
    catch e
      @message = e.message
      false
