#FizzBuzz

#method to check fizz, buzz, or fizzbuzz

def fizzbuzz(number)
	
	message = ""

	if number % 3 == 0
		message = "Fizz"
	end
	
	if number % 5 == 0
		message = message + "Buzz"
	end

	if number % 5 != 0 && number % 3 != 0 
		message = number.to_s
	end

	puts message
end


#loop 1 to 100
for number  in 1..100
	fizzbuzz(number)
end
