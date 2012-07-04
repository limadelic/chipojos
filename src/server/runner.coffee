class exports.Runner

  run: (steps, @sut) -> for step in steps
    step: step.text
    result: @run_step step

  run_step: (@step) ->
    if @is_literal()
    then @literal()
    else @regex()

  is_literal: -> @sut[@step.name]?

  literal: -> @sut[@step.name] @step.args

  regex: ->
    for method of @sut when @step.name.match method
      return @sut[method] @step.args


