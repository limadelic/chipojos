# Some static HTML with lizards

zappa = require 'zappa'

zappa ->

  console.log "Giant Leapin' Lizards!"

  @use 'static'

  @get "/": -> @render 'home'
