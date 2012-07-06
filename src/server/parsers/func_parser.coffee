{ StepArgsParser, FuncArgsParser } = require './args_parser'

class exports.FuncParser

  constructor: (@steps) ->
    @funcs = {}
    @step_args = new StepArgsParser()
    @func_args = new FuncArgsParser()

  parse: (@line) ->
    @parse_body() ?
    @close() ?
    @parse_declaration() ?
    @parse_call()

  parse_declaration: -> @declare() if @is_declaration()
  parse_body: -> @add_step() if @is_step()
  parse_call: -> @inline() if @called()

  is_declaration: -> @line[-1..] is ':'
  is_step: -> @func? and @line[0..1] is '  '

  declare: -> @func =
    name: @func_args.normalized @line[..-2]
    args_names: @func_args.parse @line[..-2]
    steps: []

  add_step: -> @func.steps.push
    text: @line[2..]
    name: @line[2..]

  close: -> if @func?
    @funcs[@func.name] = @func
    @func = undefined

  called: ->
    name = @step_args.normalized @line
    @called_func = @funcs[@line]
    @called_func?.args_values = @step_args.parse @line

  inline: -> for step in @called_func.steps
    @steps.push @func_args.inline step, @called_func
