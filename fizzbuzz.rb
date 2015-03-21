#FizzBuzz

#method to check fizz, buzz, or fizzbuzz

def fizzbuzz(number)
	
	
	if number % 3 == 0
		fizz = "fizz"
	else
		fizz = ""
	end
	
	if number % 5 == 0
		buzz = "buzz" 
	else
		buzz = ""
	end

	fizzbuzz = fizz + buzz	
	if fizzbuzz == ""
		fizzbuzz = number
	end
	return fizzbuzz
end

#loop 1 to 100
for number  in 1..100
	puts fizzbuzz(number)
end
