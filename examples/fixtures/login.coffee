users_msg =
  Jim: 'Hello lizard king'
  Pam: 'Hello turkey murderer'
  default: 'Hello world'

class @Login

  'when an user logs in': -> @msg = users_msg.default

  'it should be greeted': -> expect(@msg).not.toBeNull()

  'when @x logs in': (user) -> @msg = users_msg[user]

  'it should say @x': (msg) -> expect(msg).toEqual @msg

  'when .* logs in': -> @['when an user logs in']()

  'it should greet (her|him)': -> @['it should be greeted']()
