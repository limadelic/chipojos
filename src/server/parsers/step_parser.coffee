{ StepArgsParser } = require './args_parser'

class exports.StepParser

  constructor: (@steps) ->
    @args = new StepArgsParser()

  parse: (line) -> @steps.push
    text: line
    name: @args.normalized line
    args: @args.parse line
