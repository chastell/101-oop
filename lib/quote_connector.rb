# lib/quote_connector.rb
require 'httparty'

class QuoteConnector
  URL = 'https://talaikis.com/api/quotes/random/'.freeze
  # since this is constant, we REALLY don't want to mutate it

  def initialize(adapter: HTTParty)
    @adapter = adapter
  end

  def call
    adapter.get(URL).body
  end

  private

  attr_reader :adapter
end
