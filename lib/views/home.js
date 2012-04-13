(function() {

  div({
    "class": 'hero-unit uvp'
  }, function() {
    h1(function() {
      return 'helping you turn specs into code';
    });
    h1({
      "class": 'pull-left'
    }, function() {
      return 'one example at a time';
    });
    return a({
      "class": 'pull-right btn btn-success btn-large',
      href: '#'
    }, function() {
      return 'stay tuned ...';
    });
  });

}).call(this);
