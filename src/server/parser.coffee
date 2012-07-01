_ = require 'underscore'

class exports.Parser

  parse: (test) ->
    @steps _.compact test.split '\n'

  steps: (steps) ->
    for step in steps
      name: step
      args: @args step

  args: (step) -> []