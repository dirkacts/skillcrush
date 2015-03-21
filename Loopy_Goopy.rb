#Loopy Goopy love 

#set initial value of responde
responde = ["y"]

#loop asks and gets response
while (responde[0] == "y")
	puts "I love you" 
	puts "Are you ok?  Y/N?"
	responde = gets.chomp.downcase
end

#if not ok...
if responde[0] == "n"
	puts "I hope you feel better soon"
end