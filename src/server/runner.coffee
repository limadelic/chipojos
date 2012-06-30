class exports.Runner

  run: (steps, @fixtures) ->
    for step in steps
      step: step
      result: @result step

  result: (step) ->
    for fixture in @fixtures when fixture[step]?
      return fixture[step]()
