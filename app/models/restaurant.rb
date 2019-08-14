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

  def reviews
    # returns an array of all reviews for that restaurant

    Review.all.select {|review| review.restaurant == self}
  end

  def customers
    # Returns a **unique** list of all customers who have reviewed a particular restaurant.

    self.reviews.map {|review| review.customer}.uniq
  end

  def num_reviews
    # returns the number of reviews that restaurant has received

    self.reviews.count
  end

  def average_star_rating
    # returns the average star rating for a restaurant based on its reviews

    total_stars = self.reviews.reduce(0) {|accum, review| accum += review.rating}
    average_rating = total_stars.to_f / self.num_reviews
    average_rating.round(1)
  end

  def longest_review
    # returns the longest review content for a given restaurant

    self.reviews.max_by {|review| review.content.length}
  end

  def self.find_by_name(name)
    # given a string of restaurant name, returns the first restaurant that matches

    @@all.find {|restaurant| restaurant.name == name}
  end

end
