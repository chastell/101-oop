# lib/quote_presenter.rb

class QuotePresenter
  def initialize(quote_hash:)
    @quote_hash = quote_hash
  end

  def to_s
    "#{quote_hash['author']}: #{quote_hash['quote']}\n"
  end

  def present
    # we combine two pretty useful conventions here:
    # classes should implement to_s method that
    # will return a string representation of them ✓
    # presenters should implement present method
    # that will return their data formatted ✓
    to_s
  end

  private

  attr_reader :quote_hash

end
