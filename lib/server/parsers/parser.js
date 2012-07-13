// Generated by CoffeeScript 1.3.3
(function() {
  var FuncParser, StepParser, _;

  _ = require('underscore');

  StepParser = require('./step_parser').StepParser;

  FuncParser = require('./func_parser').FuncParser;

  exports.Parser = (function() {

    function Parser() {
      this.results = [];
      this.steps = new StepParser(this.results);
      this.funcs = new FuncParser(this.steps);
    }

    Parser.prototype.parse = function(test) {
      this.parse_lines(this.tokenize(test));
      return this.results;
    };

    Parser.prototype.tokenize = function(test) {
      return _.compact(test.split('\n'));
    };

    Parser.prototype.parse_lines = function(steps) {
      var step, _i, _len, _results;
      _results = [];
      for (_i = 0, _len = steps.length; _i < _len; _i++) {
        step = steps[_i];
        _results.push(this.parse_line(step));
      }
      return _results;
    };

    Parser.prototype.parse_line = function(line) {
      var _ref;
      return (_ref = this.funcs.parse(line)) != null ? _ref : this.steps.parse(line);
    };

    return Parser;

  })();

}).call(this);