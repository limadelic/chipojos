_ = require 'underscore'

class exports.StepParser

  constructor: (@steps) ->

  parse: (@line) -> @steps.push
    text: @line
    name: @name()
    args: @args()

  args_matcher = /'(.*?)'/g

  name: -> @line.replace args_matcher, '$x'

  args: -> @cleanup_args @line.match args_matcher

  cleanup_args: (args) -> _.map args, (arg) -> arg[1..-2]
