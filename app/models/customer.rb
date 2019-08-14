class Customer
  attr_reader :first_name, :last_name

  @@all = []
  def initialize(first_name, last_name)
    @first_name = first_name
    @last_name  = last_name
    @@all << self
  end

  def full_name
    "#{first_name} #{last_name}"
  end

  def self.all
    @@all
  end

#   - `Customer.find_by_name(name)`
#   - given a string of a **full name**, returns the **first customer** whose full name matches
def self.find_by_name(name)
  customer = self.all.find{ |customer|
    customer.full_name == name
  }
  customer
end

# - `Customer.find_all_by_first_name(name)`
#   - given a string of a first name, returns an **array** containing all customers with that first name
def self.find_all_by_first_name(f_name)
  names_with_same_first = self.all.select{ |customer|
    customer.first_name == f_name
  }
  names_with_same_first
end

# - `Customer.all_names`
#   - should return an **array** of all of the customer full names
def self.all_names
  names = self.all.map{ |customer|
    customer.full_name
  }
  names
end

  def reviews  ## returns an array of reviews with this customer
    Review.all.select{ |review|
      review.customer == self
    }
  end

# - `Customer#restaurants`
#   - Returns a **unique** array of all restaurants a customer has reviewed
def restaurants
  reviews.map{ |review| 
    review.restaurant
  }.uniq ## returns an array of all the rests a cust reviewed
end

#   - `Customer#add_review(restaurant, content, rating)`
#   - given a **restaurant object**, some review content (as a string), and a star rating (as an integer), 
#creates a new review and associates it with that customer and restaurant.
def add_review(restaurant, content, rating)
  Review.new(self, restaurant, content, rating)
end

# - `Customer#num_reviews`
#   - Returns the total number of reviews that a customer has authored
def num_reviews
  reviews.size
end

end