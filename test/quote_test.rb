require 'minitest/autorun'
require_relative '../quote'
require 'ostruct'

class DummyConnector
  def call
    { 'a' => 'b' }
  end
end

class DummyParser
  def initialize(object_to_parse:)
    @object_to_parse = object_to_parse
  end

  def call
    object_to_parse
  end

  private

  attr_reader :object_to_parse
end

class DummyPresenter
  def initialize(quote_hash:)
    @quote_hash = quote_hash
  end

  def present
    quote_hash
  end

  attr_reader :quote_hash
end

class TestQuote < Minitest::Test
  def test_random_quote
    quote_object = Quote.new(connector: DummyConnector,
                             parser: DummyParser,
                             presenter: DummyPresenter)
    assert_equal({ 'a' => 'b' }, quote_object.random_quote)
  end
end
