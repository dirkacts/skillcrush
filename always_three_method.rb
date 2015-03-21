def always_3
	puts "Give me a number, please:"
	num = Integer(gets)
	print "Always " + (num = ((((num + 5) *2) -4) /2)-num).to_s + "\n"
end

always_3
