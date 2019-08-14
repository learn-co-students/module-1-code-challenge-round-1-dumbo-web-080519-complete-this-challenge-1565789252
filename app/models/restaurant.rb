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

  def customers
    Review.all.map do |review|
      review.customer if review.restaurant == self
    end.compact.uniq
  end

  def reviews
    Review.all.map do |review|
      review if review.restaurant == self
    end.compact
  end

  def average_star_rating
    total_rating = all_ratings.sum
    num_of_ratings = all_ratings.count
    total_rating / num_of_ratings
  end

  def longest_review
    longest_review = ""
    Review.all.each do |review|
      if review.content.length > longest_review.length
        longest_review = review.content
      end
    end
    longest_review
  end

  def all_ratings
    Review.all.map do |review|
      review.rating if review.restaurant == self
    end.compact
  end

  def self.find_by_name(name)
    Restaurant.all.find do |restaurant|
      restaurant if restaurant.name == name
    end
  end
end
