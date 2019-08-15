def consolidate_cart(cart)
  hash = Hash[cart.collect {|item| [item, " "]}]
end

def apply_coupons(cart, coupons)
  # code here
end

def apply_clearance(cart)
  # code here
end

def checkout(cart, coupons)
  # code here
end
