# shopping_basket_one = {
#   book: 12.49,
#   music_cd: 14.99,
#   chocolate_bar: 0.85
# }

# shopping_basket_two = {
#   im_box_of_chocolates: 10.00,
#   im_bottle_of_perfume: 47.50
# }

# shopping_basket_three = {
#   im_bottle_of_perfume: 27.99,
#   bottle_of_perfume: 18.99,
#   headache_pills: 9.75,
#   im_box_of_chocolates: 11.25
# }

class Goods
  attr_accessor :name, :price, :quantity

  def initialize(name, price, quantity) # taxe, duty, quantity = 1
    @name = name
    @price = price
    @quantity = quantity.to_i
    @taxe = taxe = 0.10
    @duty = duty = 0.05
  end

  # method to calculate taxes on Good
    def tax_calc
      tax = @quantity * @price * @taxe
    end

  # method to calculate import duty on Good
    def import_calc
      import = @quantity * @price * @duty
    end

  def item_type
    # (book, chocolate, medical)
  end

  def good_classification
  case @name
  when .include?("book") || .include?("chocolate") || .include?("medical")
    good = Exempt.new # You need to create an Exempt class to call from.
  else
    good = NonExempt.new # You also need to create an Exempt class.
  end

  def calculation(basket)

  end

  # def list(basket)
  #   basket.each do |x, y| # I have to add sales taxes to y, but have to sort y first.
  #     puts "#{x}"
        # puts "#{y}"
  #   end

end


# puts shopping_basket_three.values.inject(:+) # This gets you the total_cost

# def basic_sales_taxe
# end

# def import_duty
# end

# def publish_receipt
# total_taxes = 0

#   puts "Taxes: #{total_taxes}"
# end




# total_cost =
