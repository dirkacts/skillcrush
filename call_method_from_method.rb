#what is the current hour?
def determine_current_hour
	current_time = Time.new
	current_hour = current_time.hour
end

#get the fellas name (sorry, the site is already pretty gal-centric)
def user
	puts "Hello, what is your name?:"
	name = gets
end
 
#create a greeting
def greeting
	current_hour = determine_current_hour
	if(current_hour > 3 && current_hour < 12)
		time = "morning"
	elsif(current_hour > 12 && current_hour < 18)
		time = "afternoon"
	elsif(current_hour > 18 || current_hour < 2)
		time = "evening"
	end
	name = user.chomp
	puts "Good #{time}, #{name.capitalize}!"
end

greeting

