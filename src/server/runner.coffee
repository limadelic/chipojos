class exports.Runner

  run: (steps, @sut) -> for step in steps
    step: step.text
    result: @execute @method step

  method: (@step) -> @literal() || @regex()

  literal: -> @step.name if @sut[@step.name]?

  regex: -> return method for method of @sut when @step.name.match method

  execute: (method) -> @sut[method].apply method, @step.args


