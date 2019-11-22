def pet_shop_name (name)
  return name[:name]
end

def total_cash(pets_store_name)
  return pets_store_name[:admin][:total_cash]
end

def add_or_remove_cash (pet_shop, money_added)
pet_shop [:admin][:total_cash] += money_added
end

def pets_sold(name_of_store)
  return name_of_store [:admin][:pets_sold]
end

def increase_pets_sold(name_of_store, number_of_pets_sold)
  name_of_store[:admin][:pets_sold] += number_of_pets_sold
end

def stock_count(name_of_store)
  return name_of_store[:pets].count
end

def pets_by_breed(pet_shop, breed_type)
  breed_total = []
  for each_pet in pet_shop[:pets]
    breed_total << each_pet if each_pet[:breed] == breed_type
  end
  return  breed_total
end

def find_pet_by_name (pet_shop, pet_name)
  for each_pet in pet_shop[:pets]
  return each_pet if each_pet[:name] == pet_name
end
end
