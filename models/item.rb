class Item
  attr_reader :name, :price

  @@items = []

  def initialize(params)
    @name = params[:name]
    @price = params[:price]

    @@items << self
  end

  def self.all
    @@items
  end
end