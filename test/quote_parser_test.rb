# test/quote_parser_test.rb
require 'minitest/autorun'
require_relative '../lib/quote_parser'
require 'ostruct'

class DummyQuoteParser
  def self.parse(hash_to_parse)
    hash_to_parse
  end
end

class TestQuoteParser < Minitest::Test
  def test_parser_call
    test_hash = { 'author' => 'Rainbow Dash', 'quote' => '[So] Awesome!' }
    parser = QuoteParser.new(
      object_to_parse: test_hash, parser_class: DummyQuoteParser
    )
    assert_equal(test_hash, parser.call)
  end
end
