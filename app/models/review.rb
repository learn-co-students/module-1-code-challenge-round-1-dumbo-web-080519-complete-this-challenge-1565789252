class Review
    attr_reader :customer, :resturant, :rating, :content
    @@all = []
  
    def initialize(customer, resturant, rating, content)
        @customer = customer
        @resturant = resturant
        @rating = rating
        @content = content
        @@all << self
    end

    def self.all
        @@all
    end



end

