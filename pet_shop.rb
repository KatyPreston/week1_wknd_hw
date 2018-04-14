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


def find_pet_by_name(shop, name)
    for pet in shop[:pets]
      if pet[:name] == name
        return pet
      end
    end
    return nil
end


# def remove_pet_by_name(shop, name)
#   for pet in shop[:pets]
#     if pet[:name] == name
#       shop.delete(name)
#     end
#   end
#   return pet
# end

def remove_pet_by_name(pets, name)
  return pets[:pets].delete_if {|pets| name == name }
end


def add_pet_to_stock(shop, new_pet)
  shop[:pets].push(new_pet)
end

def customer_cash(customers)
  customers[:cash]
end

def remove_customer_cash(customer, amount)
  customer[:cash] -= amount
end


def customer_pet_count(customers)
 customers[:pets].count
end

def add_pet_to_customer(customer, new_pet)
  customer[:pets].push(new_pet)
end

def customer_can_afford_pet(customer, pet)
  if customer[:cash] >= pet[:price]
    return true
  else
    return false
  end
end
