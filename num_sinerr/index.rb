require 'sinatra'

#Numerology ... 

#method to add all numbers and convert to single digit
def get_numerology(bday)
	#add together each element of array bday
	num = bday[0].to_i + bday[1].to_i + bday[2].to_i + bday[3].to_i + bday[4].to_i + bday[5].to_i + bday[6].to_i + bday[7].to_i 
	
	#convert total to a string 
	num = num.to_s
	
	#convert string to array and add numbers together
	num = num[0].to_i + num[1].to_i

	# if not a single digit, make it so
	if num>9
		num = num.to_s
		puts num
		num = num[0].to_i + num[1].to_i
		puts num
	end
	puts num
	return num
end

#method to select specific numerology comment
def get_message(numerology)

	case numerology

	when 1
		message = "Your numerology number is #{numerology}.\nOne is the leader. The number one indicates the ability to stand alone, and is a strong vibration. Ruled by the Sun."
	when 2
		message ="This is the mediator and peace-lover. The number two indicates the desire for harmony. It is a gentle, considerate, and sensitive vibration. Ruled by the Moon."
	when 3
		message ="Number Three is a sociable, friendly, and outgoing vibration. Kind, positive, and optimistic, Three's enjoy life and have a good sense of humor. Ruled by Jupiter."
	when 4
		message ="Your numerology number is #{numerology}.\nThis is the worker. Practical, with a love of detail, Fours are trustworthy, hard-working, and helpful. Ruled by Uranus."
	when 5
		message ="This is the freedom lover. The number five is an intellectual vibration. These are 'idea' people with a love of variety and the ability to adapt to most situations. Ruled by Mercury."
	when 6
		message ="This is the peace lover. The number six is a loving, stable, and harmonious vibration. Ruled by Venus."
	when 7
		message ="This is the deep thinker. The number seven is a spiritual vibration. These people are not very attached to material things, are introspective, and generally quiet. Ruled by Neptune."
	when 8
		message ="This is the manager. Number Eight is a strong, successful, and material vibration. Ruled by Saturn."
	when 9 
		message ="This is the teacher. Number Nine is a tolerant, somewhat impractical, and sympathetic vibration. Ruled by Mars."

	else
		message ="Uh oh! Your birth path number is not 1-9!"
	end
end

def valid_bday(bday)
	if(bday.length == 8 && !bday.match(/^[0-9]+[0-9]$/).nil?)
		true
	else false
	end
end

get '/message/:numerology' do
	numerology = params[:numerology].to_i
	@message = get_message(numerology)
	erb :index
end

post '/' do
	bday = params[:bday].gsub("-","")
	if valid_bday(bday)
		numerology = get_numerology(bday)
		redirect "/message/#{numerology}"
	else
		@error = "Oops! You should enter a valid birthdate in the form of mmddyyyy. Try again!"
		erb :form
	end
end

def setup_index_view
	bday = params[:bday].gsub("-","")
	numerology = get_numerology(bday)
	@message = get_message(numerology)
end

get '/:bday' do
	setup_index_view
	erb :index
end

get '/' do
	erb :form
end

post '/' do
	setup_index_view
	"Just a message #{@message}"
end

