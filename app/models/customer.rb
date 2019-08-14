class Customer
  attr_reader :first_name, :last_name
  @@all = []

  def initialize(first_name, last_name)
    @first_name = first_name
    @last_name  = last_name
    @@all << self
  end

  def self.all
    @@all
  end

  def self.find_by_name(name)
    @@all.find do |customer|
      customer.full_name == name
    end
  end

  def self.find_by_first_name(name)
    @@all.find do |customer|
      customer.first_name == name
    end
  end

  def full_name
    "#{first_name} #{last_name}"
  end

  def reviews
    Review.all.select do |review|
      review.customer == self
    end
  end

  def resturants
    reviews.map do |review|
      review.resturant
    end.uniq

  end

  def add_review(resturant, content, rating)
    Review.new(self, resturant, rating, content)
  end

  def num_reviews
    reviews.count
  end

end
