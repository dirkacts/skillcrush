def always_three(number)
    # math and puts on one line!
    (((number + 5) * 2 - 4) / 2 - number)
end
 
# ask the user for a number
puts "Give me a number"
 
# get the user's number with gets & use to_i to convert to an integer
# set to a variable
first_number = gets.to_i
 
puts "Always " + always_three(first_number).to_s