class Restaurant

  @@all = []
  attr_reader :name

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

# Used do instead of {} for more readable code :)
  def self.find_by_name(name)
    @@all.find do |restaurant|
      restaurant.name == name
    end
  end

  def reviews
    Review.all.select do |review|
      review.restaurant == self
    end
  end

  def customers
    arr_of_customers = self.reviews.map do |review|
      review.customer
    end
    arr_of_customers.uniq
  end

  def average_star_rating
    ratings = self.reviews.map do |review|
      review.rating
    end
    sum_of_ratings = ratings.sum
    num_of_ratings = ratings.size
    (sum_of_ratings / num_of_ratings.to_f).round(2)
  end

  def longest_review
    self.reviews.max_by do |review|
      review.content.length
    end
  end

end
