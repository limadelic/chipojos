_ = require 'underscore'

class exports.Parser

  constructor: ->
    @funcs = {}
    @steps = []

  parse: (test) ->
    @parse_lines @tokenize test
    @steps

  tokenize: (test) -> _.compact test.split '\n'

  parse_lines: (steps) -> @parse_line step for step in steps

  parse_line: (@line) ->
#    @parse_func_declaration() ||
#    @parse_func_body() ||
#    @parse_func_call() ||
    @parse_step()

  parse_step: -> @steps.push
    text: @line
    name: @name()
    args: @args()

  name: -> @line.replace /'(.*?)'/g, '$x'
  args: -> arg for arg in @line.split("'")[1..] by 2