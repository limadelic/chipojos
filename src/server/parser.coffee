_ = require 'underscore'

class exports.Parser

  parse: (test) ->
    @steps _.compact test.split '\n'

  steps: (steps) -> for step in steps
    text: step
    name: @name step
    args: @args step

  name: (step) -> step.replace /'[^']*'/g, '$x'
  args: (step) -> arg for arg in step.split("'")[1..] by 2