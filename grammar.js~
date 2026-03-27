/**
 * @file A tree-sitter grammar for the ASP-Core-2 input language format for ASP (Aswer Set Programming) systems.
 * @author Amadé Nemes <nemesamade@gmail.com>
 * @license MIT
 */

/// <reference types="tree-sitter-cli/dsl" />
// @ts-check

module.exports = grammar({
  name: "aspcore2",

  rules: {
    // TODO: add the actual grammar rules
    source_file: ($) => repeat($.statement),

    statement: ($) => choice($.integrity_constraint, $.rule, $.weak_constraint),
  },
});
