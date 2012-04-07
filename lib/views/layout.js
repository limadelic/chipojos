(function() {

  doctype(5);

  html({
    lang: 'en'
  }, function() {
    head(function() {
      meta({
        charset: 'utf-8'
      });
      title(function() {
        return 'Chipojos - Go Green';
      });
      meta({
        name: 'viewport',
        content: 'width=device-width, initial-scale=1.0'
      });
      meta({
        name: 'description',
        content: 'Chipojos is a cloud-based automated acceptance test tool'
      });
      meta({
        name: 'author',
        content: 'limadelic'
      });
      link({
        href: 'css/bootstrap.css',
        rel: 'stylesheet'
      });
      style({
        type: 'text/css'
      }, function() {
        return 'body {\n  padding-top: 60px;\n  padding-bottom: 40px;\n}';
      });
      link({
        href: 'css/bootstrap-responsive.css',
        rel: 'stylesheet'
      });
      link({
        rel: 'shortcut icon',
        href: 'ico/favicon.ico'
      });
      link({
        rel: 'apple-touch-icon-precomposed',
        sizes: '114x114',
        href: 'ico/apple-touch-icon-114-precomposed.png'
      });
      link({
        rel: 'apple-touch-icon-precomposed',
        sizes: '72x72',
        href: 'ico/apple-touch-icon-72-precomposed.png'
      });
      return link({
        rel: 'apple-touch-icon-precomposed',
        href: 'ico/apple-touch-icon-57-precomposed.png'
      });
    });
    return body(function() {
      div({
        "class": 'navbar navbar-fixed-top'
      }, function() {
        return div({
          "class": 'navbar-inner'
        }, function() {
          return div({
            "class": 'container'
          }, function() {
            a({
              "class": 'btn btn-navbar',
              'data-toggle': 'collapse',
              'data-target': '.nav-collapse'
            }, function() {
              span({
                "class": 'icon-bar'
              });
              span({
                "class": 'icon-bar'
              });
              return span({
                "class": 'icon-bar'
              });
            });
            a({
              "class": 'brand',
              href: '#'
            }, function() {
              return 'Chipojos';
            });
            return div({
              "class": 'nav-collapse'
            }, function() {
              return ul({
                "class": 'nav'
              }, function() {
                li({
                  "class": 'active'
                }, function() {
                  return a({
                    href: '#'
                  }, function() {
                    return 'Home';
                  });
                });
                li(function() {
                  return a({
                    href: 'about'
                  }, function() {
                    return 'About';
                  });
                });
                return li(function() {
                  return a({
                    href: '#contact'
                  }, function() {
                    return 'Contact';
                  });
                });
              });
            });
          });
        });
      });
      div({
        "class": 'container'
      }, function() {
        return this.body;
      });
      hr();
      footer(function() {
        return p(function() {
          return '&copy; Limadelic 2012';
        });
      });
      script({
        src: '//ajax.googleapis.com/ajax/libs/jquery/1.7.2/jquery.min.js',
        type: 'text/javascript'
      });
      return script({
        src: 'js/bootstrap.js'
      });
    });
  });

}).call(this);
