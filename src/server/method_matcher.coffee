class @MethodMatcher

  match: (@sut, @step) -> @literal() ? @regex()

  literal: -> @step if @sut[@step]?

  regex: -> return method for method of @sut when @step.match method
