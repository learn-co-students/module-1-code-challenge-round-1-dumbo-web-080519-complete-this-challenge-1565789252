class Restaurant
  attr_reader :name 

  @@all = []
  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  #double check
  def self.find_by_name(name)
    self.all.find do |restaurant|
      restaurant.name == name
    end
  end
 #helper method to get reviews associated with resturant
  def reviews
    Review.all.select do |review|
      review.restaurant == self
    end
  end
  #shows all the customers has written a review array
  def customers
    self.reviews.map do |review|
      review.customer
    end
  end

  def average_star_rating 
    rating_array = self.reviews.map do |review|
      review.rating
    end

    average_rating = rating_array.sum.to_f / reviews.count
    average_rating
  end


  #longest review need to fix
  def longest_review
    rest_review = self.reviews.select do |review|
      review.content.length
    end
    #how to iterate it and fin the longest content length?
    
  end
end
