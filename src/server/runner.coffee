class exports.Runner

  run: (steps, @sut) ->for step in steps
    step: step.text
    result: @result step

  result: (step) -> @sut[step.name]?()
