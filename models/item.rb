class Item
  attr_reader :name, :price

  @@items = []

  def initialize(params)
    @item = params[:item]
    @price = params[:price]

    @@items << self
  end

  def self.all
    @@items
  end
end