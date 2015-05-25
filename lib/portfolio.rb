class Portfolio
  attr_accessor :name, :type, :stock

  def initialize(options={})
      @name = options[:name]
      @type = options[:type]
      @stock = {}
    end

    # def stock_purchase (portfolio_to_adopt, stock_to_be_purchased)
    #   #store the stock in an object
    #   stock_object = stock[stock_to_be_purchased]
    #   #delete it from the portfolio hash
    #   stock.delete(stock_to_be_purchased)
    #   #push it into the portfolio hash
    #   po
    # end

end
