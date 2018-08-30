# test/quote_presenter_test.rb
require 'minitest/autorun'
require_relative '../lib/quote_presenter'
require 'ostruct'

class TestQuotePresenter < Minitest::Test
  def setup
    @test_hash = { 'author' => 'Rainbow Dash', 'quote' => '[So] Awesome!' }
    @output = "Rainbow Dash: [So] Awesome!\n"
  end

  def test_presenter_to_s
    presenter = QuotePresenter.new(quote_hash: @test_hash)
    assert_equal(@output, presenter.to_s)
  end

  def test_presenter_present
    test_hash = { 'author' => 'Rainbow Dash', 'quote' => '[So] Awesome!' }
    presenter = QuotePresenter.new(quote_hash: @test_hash)
    assert_equal(@output, presenter.present)
  end
end
