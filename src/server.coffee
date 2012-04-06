# Some static HTML with lizards

zappa = require('zappa').app ->

  console.log "Giant Leapin' Lizards!"

  @use 'static'

  @get "/": -> @render 'home'


zappa.app.listen process.env.PORT || 3000
