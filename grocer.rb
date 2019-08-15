def consolidate_cart(cart)
  hash = {}
  cart.each do |item|
    if hash[item.keys[0]]
      hash[item.keys[0]][:count] += 1
    else
      hash[item.keys[0]] = {
        count: 1,
        price: item.values[0][:price],
        clearance: item.values[0][:clearance]
      }
    end
  end
  hash
end

def apply_coupons(cart, coupons)
  coupons.each do |coupon|
    if cart.keys.include? coupon[:item]
      if cart[coupon][:item][:count] >= coupon{:num]
        name = "#{coupon[:item]} with coupon"
        if cart[name]
        cart[name][:count] += coupon[:num]
        else
          cart[name] = {
            count: coupon[:num],
            price: coupon[:cost]/coupon[:num],
            clearance: cart[coupon][:item]][:clearance]
          }
        end
        cart[coupon][:item]][:count] -= coupon[:num]
      end
    end
  end
  cart
end

def apply_clearance(cart)
  # code here
end

def checkout(cart, coupons)
  # code here
end
