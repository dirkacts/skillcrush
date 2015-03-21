require 'yahoo_weatherman'

def get_zip
	puts "What is you location? (zip code):"
	zipcode = gets.chomp
end

zipcode = get_zip

while zipcode.length != 5 do
	puts "Sorry, that's not a valid zipcode"
	zipcode = get_zip
end

client = Weatherman::Client.new :unit => 'F'

weather = client.lookup_by_location(zipcode)
forecast = weather.forecasts

temp = weather.condition['temp'] 
location = weather.location['city'] + ", " + weather.location['region']

puts "It's currently " + temp.to_s + " degrees in " + location.to_s

today = Time.now.strftime('%w').to_i
tomorrow = today + 1

puts today
puts tomorrow

puts "Here's your forecast for the next 5 days:"

forecast.each do |day|
	puts day.fetch('text')

end



