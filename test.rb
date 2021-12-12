# frozen_string_literal: true

require "simplecov"

SimpleCov.command_name "Brutal test suite"
SimpleCov.start

require "./lib/pseudo_legal_move_tablebase/puchi_shogi"

# ------------------------------------------------------------------------------

actual = begin
  PseudoLegalMoveTablebase::PuchiShogi::DB
end

raise if actual.keys != ["S:+B", "S:+N", "S:+P", "S:+R", "S:-K", "S:B", "S:N", "S:P", "S:Q", "S:R", "s:+b", "s:+n", "s:+p", "s:+r", "s:-k", "s:b", "s:n", "s:p", "s:q", "s:r"]
