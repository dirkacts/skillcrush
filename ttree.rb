numbers = []
 
number = 0

loop do
  numbers.push(number)
  number += 1
  if numbers.length > 3
    break
  end
end

puts numbers.inspect
