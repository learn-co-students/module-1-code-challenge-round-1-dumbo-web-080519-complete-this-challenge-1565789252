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

# - `Restaurant#reviews`
#   - returns an array of all reviews for that restaurant
  def reviews  # return an array of reviews with this restaur
    Review.all.select{ |review|
      review.restaurant == self
    }
  end

#   - `Restaurant#customers`
#   - Returns a **unique** list of all customers who have reviewed a particular restaurant.

def customers
  reviews.map{ |review|
    review.customer
  }.uniq
end

def total_stars #an array of points
  points = reviews.map{ |review|
    review.rating
  }
  stars = 0
  points.each{ |point|
    stars += point
  }
  stars
end
# - `Restaurant#average_star_rating`
#   - returns the average star rating for a restaurant based on its reviews
def average_star_rating
 avg = total_stars / (reviews.count * 5).to_f
end

# - `Restaurant#longest_review`
#   - returns the longest review content for a given restaurant
def longest_review
  review_with_longest_review = reviews.max_by{ |review|
    review.content.length
  }
end

# - `Restaurant.find_by_name(name)`
#   - given a string of restaurant name, returns the first restaurant that matches
def self.find_by_name(name)
  self.all.find{ |restaurant|
    restaurant.name == name
  }
end

end
