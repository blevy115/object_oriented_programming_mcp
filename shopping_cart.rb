require '/Users/brandonlevy/Desktop/bitmaker/projects/object_oriented_programming_mcp/product.rb'

class Shopping_Cart

  def initialize
    @total_cost_cart = 0
    @cart = []
  end

  def add_to_cart(name, base_price)
    item = Product.new(name, base_price)
    @cart << item
  end

  def remove_from_cart(item)
    @cart.each do |product|
    if product.name == item
      @cart.delete(product)
    end
  end
  end

  def total_cost_cart_bt
    @total_cost_cart = 0
    @cart.each do |item|
      @total_cost_cart += item.base_price
      end
      return @total_cost_cart
    end

  def total_cost_cart_at
    @total_cost_cart = 0
      @cart.each do |item|
        @total_cost_cart += item.total_cost
        end
        return @total_cost_cart
      end

      def total_cost_cart
        @total_cost_cart
      end

      def cart
        @cart
      end
end

shopping_cart = Shopping_Cart.new
shopping_cart.add_to_cart("Video Game", 60)
shopping_cart.add_to_cart("Board Game", 100)
puts shopping_cart.total_cost_cart_at
puts shopping_cart.total_cost_cart_at
puts shopping_cart.total_cost_cart_at

# puts shopping_cart.total_cost_cart
shopping_cart.remove_from_cart("Video Game")
puts shopping_cart.total_cost_cart_at
