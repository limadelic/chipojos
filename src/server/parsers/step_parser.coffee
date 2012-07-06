class exports.StepParser

  constructor: (@steps) ->

  parse: (@line) -> @steps.push
    text: @line
    name: @name()
    args: @args()

  name: -> @line.replace /'(.*?)'/g, '$x'
  args: -> arg for arg in @line.split("'")[1..] by 2
