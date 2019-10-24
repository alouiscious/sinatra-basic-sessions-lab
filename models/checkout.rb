class Checkout
  attr_reader :name, :total

  CHECKOUT = []
  def initialize(params)
    @name = params[:name]
    @price = params[:price]

    CHECKOUT << self
  end

  def self.all
    CHECKOUT
  end



end