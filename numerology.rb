#Numerology ... 

#request and get birthday from user

puts "Give me your birthday (mmddyyyy), please:"

bday= gets

#add all array numbers together
num = bday[0].to_i + bday[1].to_i + bday[2].to_i + bday[3].to_i + bday[4].to_i + bday[5].to_i + bday[6].to_i + bday[7].to_i 

#convert total to a string 

num = num.to_s

#convert string to array and add numbers together

num = num[0].to_i + num[1].to_i


# if not a single digit, make it so

if num>9
	num = num[0]+num[1]
end

#display the total number

puts "\nYour numerology number is #{num}\n\n";

#display specific numerology comment

case num

when 1
	puts "One is the leader. The number one indicates the ability to stand alone, and is a strong vibration. Ruled by the Sun.\n\n"
when 2
	puts "This is the mediator and peace-lover. The number two indicates the desire for harmony. It is a gentle, considerate, and sensitive vibration. Ruled by the Moon.\n\n"
when 3
	puts "Number Three is a sociable, friendly, and outgoing vibration. Kind, positive, and optimistic, Three’s enjoy life and have a good sense of humor. Ruled by Jupiter.\n\n"
when 4
	puts "This is the worker. Practical, with a love of detail, Fours are trustworthy, hard-working, and helpful. Ruled by Uranus.\n\n"
when 5
	puts "This is the freedom lover. The number five is an intellectual vibration. These are ‘idea’ people with a love of variety and the ability to adapt to most situations. Ruled by Mercury.\n\n"
when 6
	puts "This is the peace lover. The number six is a loving, stable, and harmonious vibration. Ruled by Venus.\n\n`"
when 7
	puts "This is the deep thinker. The number seven is a spiritual vibration. These people are not very attached to material things, are introspective, and generally quiet. Ruled by Neptune.\n\n"
when 8
	puts "This is the manager. Number Eight is a strong, successful, and material vibration. Ruled by Saturn.\n\n"
when 9 
	puts "This is the teacher. Number Nine is a tolerant, somewhat impractical, and sympathetic vibration. Ruled by Mars.\n\n"

else
	puts "You were born at the wrong time...\n\n"

end


