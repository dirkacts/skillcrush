
# require the nokogiri gem and its dependencies
require 'nokogiri'
require 'open-uri'
 
# grab the HTML page 
doc = Nokogiri::HTML(open('http://www.marthastewart.com/312598/brick-pressed-sandwich'))
 
list = doc.css('.components-data')

# puts list

list.each do |n|
	puts n.inner_html
end

