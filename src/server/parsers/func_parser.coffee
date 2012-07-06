class exports.FuncParser

  constructor: (@steps) ->
    @funcs = {}

  parse: (@line) ->
    @parse_body() ?
    @close() ?
    @parse_declaration() ?
    @parse_call()

  parse_declaration: -> @open() if @is_declaration()
  parse_body: -> @add_step() if @is_step()
  parse_call: -> @inline() if @called()

  is_declaration: -> @line[-1..] is ':'
  is_step: -> @func? and @line[0..1] is '  '

  open: -> @func =
    name: @line[..-2]
    args: @args @line[..-2]
    steps: []

  args: (name) -> name.match /(\$\S+)/g

  add_step: -> @func.steps.push
    text: @line[2..]
    name: @line[2..]

  close: -> if @func?
    @funcs[@func.name] = @func
    @func = undefined

  called: ->
    @called_args = []
    @called_func = @funcs[@line]

  inline: -> for step in @called_func.steps
    @steps.push @inline_args step

  inline_args: (step) ->
    for arg in @called_args
      step.replace '/#{arg}/g', @called_args[arg]
    step
