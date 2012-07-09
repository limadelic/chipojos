class @Result

  passed: (step)  ->
    step: step.text
    passed: true

  failed: (step, e) ->
    step: step.text
    passed: false
    message: e.message

  missing: (step) ->
    step: step.text
    passed: undefined