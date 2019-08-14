class Review
    attr_reader :restaurant, :content, :rating, :rating, :customer

    @@all = []
    
    def initialize(customer, restaurant, rating, content)
        @customer = customer
        @restaurant = restaurant
        @rating = rating
        @content = content
        @@all << self
    end

    def self.all
        @@all
    end
end

