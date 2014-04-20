require "ctc/version"
require "ctc/kanji_2_ctc"
require "ctc/ctc_2_kanji"

module Ctc
  class KanjiNotFoundError < StandardError; end
  class CtcNotFoundError < StandardError; end
end
