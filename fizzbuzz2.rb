#FizzBuzz

#method to check fizz, buzz, or fizzbuzz

def fizzbuzz(number)
	
	if number % 3 == 0 && number % 5 == 0
		puts "FizzBuzz"

	elsif number % 3 == 0
		puts "Fizz"
	
	elsif number % 5 == 0
		puts "Buzz"

	else 
		puts number
	end

end


#loop 1 to 100
for number  in 1..100
	fizzbuzz(number)
end
