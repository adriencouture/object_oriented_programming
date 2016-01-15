class Goods
  attr_accessor :item, :price, :quantity

  def initialize(item, price, sales_taxe, duty) # quantity = 1
    @item = item
    @price = price
    @sales_taxe = sales_taxe =1111
    @duty = duty
    # @quantity = quantity
  end

  def item_type
    # (book, chocolate, medical)
  end

  def calculation
  end


shopping_basket_one = {
  book: 12.49,
  music_cd: 14.99,
  chocolate_bar: 0.85
}

shopping_basket_two = {
  im_box_of_chocolates: 10.00,
  im_bottle_of_perfume: 47.50
}

shopping_basket_three = {
  im_bottle_of_perfume: 27.99,
  bottle_of_perfume: 18.99,
  headache_pills: 9.75,
  im_box_of_chocolates: 11.25
}

puts shopping_basket_three.values.inject(:+) # This gets you the total_cost

def basic_sales_taxe
end

def import_duty
end

def publish_receipt
total_taxes = 0

  puts "Taxes: #{total_taxes}"
end
# purchases[]
#
#
#
# total_cost =
