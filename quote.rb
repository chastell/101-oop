require 'bundler/inline'

gemfile do
  source 'https://rubygems.org'
  gem 'httparty'
end

require 'json'

require_relative 'lib/quote_connector'
require_relative 'lib/quote_parser'

class Quote
  def initialize(connector: QuoteConnector, parser: QuoteParser)
    @connector = connector
    @parser = parser
  end

  def random_quote
    server_raw_output = connector.new.call
    quote_hash = parser.new(object_to_parse: server_raw_output).call
    quote_hash['author'] + ': ' + quote_hash['quote'] + "\n"
  end

  private

  attr_reader :connector, :parser
end

print Quote.new.random_quote if $PROGRAM_NAME == __FILE__
