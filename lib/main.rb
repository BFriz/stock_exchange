require 'pry'
require_relative 'brokerage'
require_relative 'client'
require_relative 'portfolio'
require_relative 'stock'

brokerage = Brokerage.new({
  name: 'Guardian Capital Advisors',
  address: 'Marine Building'
 })

client1 = Client.new({
  name: 'Susan',
  balance: 5000000
 })
client2 = Client.new({
  name: 'Wusan',
  balance: 10000000
  })
brokerage.clients[client1.name] = client1
brokerage.clients[client2.name] = client2

port1 = Portfolio.new({
  name: "High Yield",
  type: 'Aggreesive'
  })
port2 = Portfolio.new({
  name: "Blue Chip",
  type: 'Defensive'
  })
client1.portfolio[port1.name] = port1
client2.portfolio[port2.name] = port2

stock1 = Stock.new({
  name: 'Tesla',
  ticker: 'TSLA',
  price: 199.47,
  shares: 13
  })
stock2 = Stock.new({
  name: 'BlackBerry',
  ticker: 'BB.TO',
  price: 12.88,
  shares: 160
  })
port1.stock[stock1.name] = stock1
port2.stock[stock2.name] = stock2
def menu
  puts `clear`
  puts '*** CASE ***'
  puts '1 - Create a client'
  puts '2 - Create a portfolio'
  puts '3 - Purchase Stocks'
  puts '4 - Sell Stocks'
  puts '5 - List all clients and their balances'
  puts "6 - List a client's portfolios and associated values"
  puts "7 - List all stocks in a portfolio and associated values"
  puts 'q - Quit program'
  print "--> "
  gets.chomp.downcase
end

response = menu
while response.upcase != 'Q'
  case response
  when '1' #Create a client'
    puts "What is your name: "
    name = gets.chomp
    puts "What is your current balance?"
    balance = gets.chomp.to_f
    puts "Do you have existing portolio (y)es or (n)o"
    port = gets.chomp
    #create a new animal object, remember we are instantiating with an empty toys array, so we have to add the toys later;
    client = Client.new({
      name: name,
      balance: balance
      })

    brokerage.clients[client.name] = client
    #Add the portfolio's into the clients portfolio array
    # brokerage.client[client.name].portfolio = portfolio
  when '2' #Create a portfolio'
    puts "What is the name of your portfolio?"
    name = gets.chomp
    puts "What type of portfolio ex 'Growth' 'Dividend'" 
    type = gets.chomp
     portfolio = Portfolio.new({
      name: name,
      type: type
      })

    # brokerage.clients[client.name] = client
  when '3' #Purchase Stocks'
    print "What is the name of the stock you would like to purchase?"
    name = gets.chomp
    print "What is the ticker?"
    ticker = gets.chomp
    print "Current price?"
    price = gets.chomp.to_f
    print "Finally how many shares would you like to purchase?"
    shares = gets.chomp.to_f
    print "What portfolio would you like to put it in?"
    #create a new animal object, remember we are instantiating with an empty toys array, so we have to add the toys later; 
    stock = Stock.new({
      name: name,
      ticker: ticker,
      price: price,
      shares: shares,
      })  
    #Add the animal into the shelter
    # shelter.animals[animal.name] = animal
    #Add the toys into the animals toys array
    # shelter.animals[animal.name].toys = toys
  when '4' #Sell stocks 
    print "Name: "
    name = gets.chomp
    print "Age: "
    age = gets.chomp.to_i
    print "Criminal record (y)es (n)o: "
    criminal_record = (gets.chomp == "y")
    print "Number of kids: "
    num_kids = gets.chomp.to_i
    person = Person.new({
      name: name,
      age: age,
      criminal_record: criminal_record,
      num_kids: num_kids
      })
    #Adding the client to the shelter
    shelter.clients[person.name] = person
    puts "#{person.name} was added to the shelter"
    puts "Enter any key to continue"
    gets
  when '5' #List all clients and their balances'
    puts "The following clients are with this Brokerage:"
    puts brokerage.display_clients
    puts "Enter any key to continue"
    gets
  when '6' #List a client's portfolios and associated values"
    puts "Choose a client: "
    puts client.display_portfolio
    puts "Enter any key to continue"
    gets
  when '7' #List all stocks in a portfolio and associated values"
  end
  response = menu
end
binding.pry
nil