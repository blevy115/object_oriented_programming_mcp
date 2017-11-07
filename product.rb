class Product

def initialize (name, base_price)
  @name = name
  @base_price = base_price
  @tax_rate = 10
end

def name
  @name
end

  def base_price
    @base_price
  end

def total_cost
  @base_price_at = @base_price*(@tax_rate/100.to_f+1)
  return @base_price_at
end


end
