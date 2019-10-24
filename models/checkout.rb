class Checkout
  attr_reader :user, :total

  CHECKOUT = []
  def initialize(params)
    @name = params[:user]
    @total = params[:total]

    CHECKOUT << self
  end

  def self.all
    CHECKOUT
  end



end