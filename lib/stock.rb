class Stock

attr_accessor :ticker, :price, :shares, :name

  def initialize(options={})
    @name = options[:name]
    @ticker = options[:ticker]
    @price = options[:price]
    @shares = options[:shares]
  end
# def display_clients




end
