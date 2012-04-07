(function() {

  div({
    "class": 'row'
  }, function() {
    div({
      "class": 'span6'
    }, function() {
      return img({
        src: 'img/chipojo.png',
        alt: 'Chipojo'
      });
    });
    return div({
      "class": 'span5 offset1'
    }, function() {
      return div({
        "class": 'hero-unit'
      }, function() {
        h1(function() {
          return 'El Chipojos';
        });
        p(function() {
          return 'Green when healthy. Alerts you with a red flag\nwhen there are problems. Catches bugs.';
        });
        return p(function() {
          return a({
            "class": 'btn btn-primary btn-large',
            href: '#'
          }, function() {
            return 'Learn more &raquo;';
          });
        });
      });
    });
  });

  div({
    "class": 'row'
  }, function() {
    div({
      "class": 'span4'
    }, function() {
      h2(function() {
        return 'Green When Healthy';
      });
      p(function() {
        return img({
          src: 'img/green-scales.png'
        });
      });
      return p(function() {
        return a({
          "class": 'btn',
          href: '#'
        }, function() {
          return 'View details &raquo;';
        });
      });
    });
    div({
      "class": 'span4'
    }, function() {
      h2(function() {
        return 'Alerts with a Red Flag';
      });
      p(function() {
        return img({
          src: 'img/red-dewlap.png'
        });
      });
      p(function() {
        return 'How wide is this image. There are a lot of words here. are they big enough.';
      });
      return p(function() {
        return a({
          "class": 'btn',
          href: '#'
        }, function() {
          return 'View details &raquo;';
        });
      });
    });
    return div({
      "class": 'span4'
    }, function() {
      h2(function() {
        return 'Catches Bugs';
      });
      p(function() {
        return img({
          src: 'img/bugs.png'
        });
      });
      return p(function() {
        return a({
          "class": 'btn',
          href: '#'
        }, function() {
          return 'View details &raquo;';
        });
      });
    });
  });

}).call(this);
