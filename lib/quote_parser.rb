# lib/quote_parser.rb

# let's take note that it's a bit of overkill
# since JSON is in stdlib
# but hey, we're doing EXOOP (extreme oop)!

class QuoteParser
  def initialize(object_to_parse:, parser_class: JSON)
    @object_to_parse = object_to_parse
    @parser_class = parser_class
  end

  def call
    parser_class.parse(object_to_parse)
  end

  private

  attr_reader :object_to_parse, :parser_class
end
