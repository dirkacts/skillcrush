#Always 3

#request and get number from user
puts "Give me a number, please:"
num = gets

#convert number to integer
number = num.to_i
#manipulate number
number += 5
number *= 2
number -= 4
number /= 2
number = number - num.to_i
print "Always #{number}\n"
