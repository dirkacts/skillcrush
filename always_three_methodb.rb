#method to convert users number to 3, always
def always_3(num)
	message = (((((num + 5) *2) -4) /2)-num).to_s + "\n"
end

# request and receive user input  
    puts "Give me a number, please:"
	num = gets.to_i
	
#send the user input to the method "always_3" within print statement
print "Always " + always_3(num)