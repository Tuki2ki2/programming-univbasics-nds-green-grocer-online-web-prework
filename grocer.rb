require 'pry'
def find_item_by_name_in_collection(name, collection)
  counter = 0
  while counter < collection.length
      if collection[counter][:item] == name
        return collection[counter]
        end
      counter+=1
    end
    nil
  end

def consolidate_cart(cart)
  a = 0
  array = []
  while a < cart.length do
    item = find_item_by_name_in_collection(cart[a][:item],array)
    if item != nil
      item[:count] +=1
    else
      item= {
        :item => item[a][:item],
        :price => item[a][:price],
        :clearance => item[a][:clearance],
        :count => 1
      }
      array<< item
    end
    a+=1

  end
  array
  # Consult README for inputs and outputs
  #
  # REMEMBER: This returns a new Array that represents the cart. Don't merely
  # change `cart` (i.e. mutate) it. It's easier to return a new thing.
end

def apply_coupons(cart, coupons)
  # Consult README for inputs and outputs
  #
  # REMEMBER: This method **should** update cart
end

def apply_clearance(cart)
  # Consult README for inputs and outputs
  #
  # REMEMBER: This method **should** update cart
end

def checkout(cart, coupons)
  # Consult README for inputs and outputs
  #
  # This method should call
  # * consolidate_cart
  # * apply_coupons
  # * apply_clearance
  #
  # BEFORE it begins the work of calculating the total (or else you might have
  # some irritated customers
end
