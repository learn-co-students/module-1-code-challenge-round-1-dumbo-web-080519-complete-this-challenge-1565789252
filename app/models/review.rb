class Review
    attr_reader :content, :rating, :customer, :restaurant 
    @@all = []

    def initialize(content , rating, customer, restaurant)
        @cotnent = content
        @rating = rating
        @customer = customer
        @restaurant = restaurant
        @@all << self
    end

    def self.all
        @@all
    end

    def find_review
        self.all.find {|review| review.content == self}
    end

    def customer
        self.find_review.customer
    end

    def Restaurant
        self.find_review.restaurant
    end

    def find_restaurant
        self.all.select {|content| content.restaurant == self}
    end

    def rating
        self.find_restaurant.rating
    end

    def content
        self.find_review.content
    end
  
end

