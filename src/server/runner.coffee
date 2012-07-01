class exports.Runner

  run: (steps, @fixtures) ->
    for step in steps
      step: step.name
      result: @result step

  result: (step) ->
    for fixture in @fixtures when fixture[step.name]?
      return fixture[step.name]()
