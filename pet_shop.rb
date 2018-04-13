def pet_shop_name(shop)
  return shop[:name]
end

def total_cash(shop)
  return shop[:admin][:total_cash]
end

#this function works for both tests adding and removing cash
def add_or_remove_cash(shop, amount)
  shop[:admin][:total_cash] += amount
end

def pets_sold(shop)
  shop[:admin][:pets_sold]
end

def increase_pets_sold(shop, number)
  shop[:admin][:pets_sold] += number
end

def stock_count(shop)
  shop[:pets].length
end

#this function works for both tests for breed
def pets_by_breed(shop, type)
  pets = []
  for pet in shop[:pets]
    if pet[:breed] == type
    pets.push(pet)
    end
  end
  return pets
end


# def find_pet_by_name(shop, pet)
#    pet = shop[:pets]
# end

#the next one too

# and this one is maybe linked

# def remove_pet_by_name(shop, name)
#   shop[:pets].delete(name)
# end

def add_pet_to_stock(shop, new_pet)
  shop[:pets].push(new_pet)
end

def customer_cash(customers)
  customers[:cash]
end

def remove_customer_cash(customer, amount)
  customer[:cash] -= amount
end
