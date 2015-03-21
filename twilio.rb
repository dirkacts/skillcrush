require 'rubygems'
require 'twilio-ruby'
 
account_sid = "ACa29bbd60468687d4cccce46e71a15e9e"
auth_token = "dac9f658468909f1b2440af4ff33c6d3"
 
client = Twilio::REST::Client.new account_sid, auth_token
 
from = "+12173035479" # Your Twilio number
 
friends = {
"+12174153509" => "Curious George"
}

friends.each do |key, value|
  client.account.messages.create(
    :from => from,
    :to => key,
    :body => "Hey #{value}, Monkey party at 6PM. Bring Bananas!"
  )
  puts "Sent message to #{value}"
end