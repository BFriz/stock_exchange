class Brokerage
attr_accessor :name, :address, :animals, :clients

    def initialize(options={})
      @name = options[:name]
      @address = options[:address]
      @clients = {}
    end

    def display_clients
      clients.keys.join(', ')
    end
end 