describe 'Sentences', ->

  it 'says hello', -> test '''

    when an user logs in
    it should be greeted

  '''

  it "doesn't say wuzup", ->

    failure = run('''

      when 'Jim' logs in
      it should say 'wuzup'

    ''')[1]

    expect(failure.passed).toBeFalsy()
    expect(failure.message)
      .toEqual "expected 'wuzup' to equal 'Hello lizard king'"