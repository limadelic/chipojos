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
  called: -> @funcs[@line]?

  open: -> @func =
    name: @line[..-2]
    steps: []

  add_step: -> @func.steps.push
    text: @line[2..]
    name: @line[2..]

  close: -> if @func?
    @funcs[@func.name] = @func.steps
    @func = undefined

  inline: -> @steps.push.apply @steps, @funcs[@line]

