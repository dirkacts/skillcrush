require 'yahoo_weatherman'

# method to get location
def get_zip
	print "What is you location? (zip code):  "
	zipcode = gets.chomp
end

# method to draw separator line
def hor_line
	for i in 1..40
		print "-"
	end
	puts ''
end

# set initial location
zipcode = get_zip

# make sure zipcode is correct length
while zipcode.length != 5 do
	puts "Sorry, that's not a valid zipcode"
	zipcode = get_zip
end

# get weather info from yahoo weatherman
client = Weatherman::Client.new :unit => 'F'
weather = client.lookup_by_location(zipcode)
today = Time.now.strftime('%w').to_i

# set and show variables for current location and temp
temp = weather.condition['temp'] 
location = weather.location['city'] + ", " + weather.location['region']

puts "It's currently " + temp.to_s + " degrees in " + location.to_s

# separation!
hor_line 

# here's the forecast
puts "Here's your forecast for the next 5 days:"

weather.forecasts.each do |forecast|

day = forecast['date']

weekday = day.strftime('%w').to_i
	if weekday == today
		day = 'Today'
	elsif weekday == today + 1
		day = 'Tomorrow'
	else
		day = day.strftime('%A')
	end

puts 'The forecast for ' + day + ': ' + forecast['text'] + '.  With a high of '+ forecast['high'].to_s + ' and a low of ' + forecast['low'].to_s

end

#ending separator
hor_line