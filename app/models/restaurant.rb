class Restaurant
  attr_reader :name

  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def reviews
    Review.all.select {|review| review.restaurant == self}
  end

  def customers
    (reviews.map {|review| review.customer}).uniq
  end

  def total_rating
    (reviews.map {|review| review.rating}).sum
  end

  def average_star_rating
    total_reviews = reviews.size
    average = (total_rating.to_f / total_reviews.to_f)
    ## for restaurants with no reviews/rating, we'll return 0
    average.is_a?(Integer) ? average : 0
  end

  def longest_review
    longest_review = reviews.max_by {|review| review.content.length}
    longest_review ? longest_review.content : "No reviews yet!"
  end

  def self.find_by_name(name)
      self.all.find {|restaurant| restaurant.name == name}
  end

  def self.all
    @@all
  end

end
