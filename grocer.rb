def consolidate_cart(cart)
  hash = {}
  cart.each do |item|
    if hash[item.keys[0]]
      hash[item.keys[0]] += 1
    else
      hash[item.keys[0]] = {
        count: 1,
        price: item.value[0][:price],
        clearance: item.value[0][:clearance]
      }
    end
  end
  hash
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
