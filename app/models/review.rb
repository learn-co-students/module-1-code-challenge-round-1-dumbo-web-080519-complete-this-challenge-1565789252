class Review

    attr_reader :restaurant, :content, :rating
    @@all = []

    def initialize(restaurant, content, rating)
        @restaurant = restaurant
        @content = content
        @rating = rating
        @@all << self
    end

    # def add_review(restaurant, content, rating)
 
    # end

    def self.all
        @@all
      end
  
end

