
require 'rubygems'
require 'twilio-ruby'
require 'sinatra'
 
account_sid = "ACa29bbd60468687d4cccce46e71a15e9e"
auth_token = "dac9f658468909f1b2440af4ff33c6d3"
 
client = Twilio::REST::Client.new account_sid, auth_token
 
from = "+12173035479" # Your Twilio number
 
friends = {
"+12174153509" => "Dirty Dirk"
}

friends.each do |key, value|
  client.account.messages.create(
    :from => from,
    :to => key,
    :body => "Hey #{value}, Ask a question, any question!"
  )
  puts "Sent message to #{value}"
end



eight_says = [
"It is certain",
"It is decidedly so",
"Without a doubt",
"Yes definitely",
"You may rely on it",
"As I see it, yes",
"Most likely",
"Outlook good",
"Yes",
"Signs point to yes",
"Reply hazy try again",
"Ask again later",
"Better not tell you now",
"Cannot predict now",
"Concentrate and ask again",
"Don't count on it",
"My reply is no",
"My sources say no",
"Outlook not so good",
"Very doubtful"
]

message = eight_says.sample

get '/sms-quickstart' do
  twiml = Twilio::TwiML::Response.new do |r|
    r.Message "#{message}"
  end
  twiml.text
end

