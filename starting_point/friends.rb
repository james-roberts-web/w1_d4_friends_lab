require 'pry'

def get_name(person)
  return person[:name]
end

def get_show(person)
  return person[:favourites][:tv_show]
end

def food(person, input)
  if person[:favourites][:snacks].include?(input)
    return true
      else
    return false
  end
end

def add_friend(person, name)
    person[:friends].push(name)
end

def remove_friend(person, name)
    person[:friends].delete(name)
end

def total_money(people)
  total_combined = 0
  for person in people
    total_combined += person[:monies]
  end
    return total_combined
end

def loan(lender, lendee, amount)
lender[:monies] -= amount
lendee[:monies] += amount
end
