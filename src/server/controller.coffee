http = require 'restler'

app.get "/", (req, res) -> res.render 'home'

app.get "/test", (req, res) -> res.render 'test'

app.post "/test", (req, res) ->
  http.postJson(settings.engine_run, content: req.body.test)
    .on 'complete', (data, response) ->
      console.log data
      res.render 'results', results: data
