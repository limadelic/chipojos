###

Sentences are the simplest form for text -> code matching
There are many strategies depending on the target language
also affected by language styles (camel-case/snake-case, etc)
Regexes are a particular case

###

describe 'Sentences', ->

  it 'says hello', (done) ->

    run '''

      when a user logs in
      it should be greeted

    '''
    , done



