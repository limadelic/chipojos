# Some static HTML with lizards

zappa = require('zappa').app ->

  console.log "Giant Leapin' Lizards!"

  @use 'static'

  @get "/": -> @render 'home'
  @get "/test": -> @render 'test'


zappa.app.listen process.env.PORT or 3000
