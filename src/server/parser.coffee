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
    @parse_func() ||
    @parse_step()

  parse_step: -> @steps.push
    text: @line
    name: @name()
    args: @args()

  name: -> @line.replace /'(.*?)'/g, '$x'
  args: -> arg for arg in @line.split("'")[1..] by 2

  parse_func: ->
    @parse_func_declaration() ||
    @parse_func_body() ||
    @end_func() ||
    @parse_func_call()

  parse_func_declaration: -> @new_func() if @is_func_declaration()
  parse_func_body: -> @add_func_step() if @is_func_step()
  parse_func_call: -> @inline_func() if @is_func_call()

  is_func_call: -> @funcs[@line]?
  is_func_declaration: -> @line[-1..] is ':'
  is_func_step: -> @func? and @line[0..1] is '  '

  func_name: -> @line[..-2]
  func_steps: -> @funcs[@line]

  new_func: ->
    @end_func()
    @func =
      name: @func_name()
      steps: []

  add_func_step: ->
    @func.steps.push
      text: @line[2..]
      name: @line[2..]

  end_func: -> if @func?
    @funcs[@func.name] = @func.steps
    @func = undefined

  inline_func: -> @steps = @steps.concat @func_steps()
