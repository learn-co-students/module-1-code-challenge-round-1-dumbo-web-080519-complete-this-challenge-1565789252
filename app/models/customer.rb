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

  def add_review(restaurant, rating, content)
    # given a **restaurant object**, some review content (as a string), and a star rating (as an integer), creates a new review and associates it with that customer and restaurant.

    Review.new(self, restaurant, rating, content)
  end

  def reviews
    # Returns an array of all reviews a customer has made

    Review.all.select {|review| review.customer == self}
  end

  def restaurants
    # Returns a **unique** array of all restaurants a customer has reviewed

    self.reviews.map {|review| review.restaurant}.uniq
  end

  def num_reviews
    # Returns the total number of reviews that a customer has authored

    self.reviews.count
  end

  def self.find_by_name(name)
    # given a string of a **full name**, returns the **first customer** whose full name matches

    @@all.find {|customer| customer.full_name == name}
  end

  def self.find_all_by_first_name(name)
    # given a string of a first name, returns an **array** containing all customers with that first name

    @@all.select {|customer| customer.first_name == name}
  end

  def self.all_names
    # should return an **array** of all of the customer full names
    @@all.map {|customer| customer.full_name}
  end

end
