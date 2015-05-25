class Client
  attr_accessor :name, :balance, :portfolio

  def initialize(options={})
    @name = options[:name]
    @balance = options[:balance]
    @portfolio = {}
  end

  def display_portfolio
      clients.portfolio.keys.join(', ')
  end
  # def purchase_stock(portfolio_to_add, stock_to_be_added)
  #   #store the stock object
  #   stock_object = stocks[stock_to_be_added]

end
