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

  def num_reviews
    Review.all.select do |review|
      review.customer == self
    end.count
  end

  def restaurants
    Restaurant.all.select do |restaurant|
      reviews_by_customor = Review.all.map do |review|
        review.customer
      end
      reviews_by_customor ==
    end
  end




end
