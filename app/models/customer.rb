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

  def add_review(restaurant, content, rating)
    Review.new(restaurant, content, rating, self)
  end

  def all_my_reviews
    Review.all.select {|review| review.customer == self}
  end

  def num_reviews
    self.all_my_reviews.count
  end

  def restaurants
    rest_array= self.all_my_reviews.map {|my_reviews|my_reviews.restaurant}
    rest_array.uniq
  end

  def self.find_by_name(name)
    self.all.find {|customer| customer.full_name == name}
  end

  def self.find_all_by_first_name(name)
    self.all.select {|customer| customer.first_name == name}
  end

  def self.all_names
    self.all.select {|customer|customer.full_name}
  end
end
