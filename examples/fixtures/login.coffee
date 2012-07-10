users_msg =
  Jim: 'Hello lizard king'
  Pam: 'Hello turkey murderer'
  default: 'Hello world'

class @Login

  'when an user logs in': -> @msg = users_msg.default

  'it should be greeted': -> @msg.should.not.be.undefined

  'when @x logs in': (user) -> @msg = users_msg[user]

  'it should say @x': (msg) -> msg.should.eql @msg

  'when .* logs in': -> @['when an user logs in']()

  'it should greet (her|him)': (done) ->
    process.nextTick =>
      @['it should be greeted']()
      done()
