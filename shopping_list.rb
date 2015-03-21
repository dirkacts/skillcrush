def create_list
	print "What is the list name?"
	name = gets.chomp

	hash = { "name" => name, "items" => Array.new}
	return hash
end

def add_list_item
	print "What is the item called?"
	item_name = gets.chomp

	print "How many?"
	qty = gets.chomp.to_i

	hash = {"name" => item_name, "qty" => qty}
	return hash
end

def print_sep(character = "-")
	print character * 80
end

def print_list(list)
	print_sep
	puts "List: #{list['name']}"
	print_sep
	puts "\t Items: \t\t\t Quantity"
	print_sep
	list["items"].each do |item|
		puts "  " + item['name'] + "\t\t\t     " + item['qty'].to_s
	end
end



list = create_list()

# new_item = true

# while new_item
# 	list['items'].push(add_list_item())
# 	puts "Add another item (y/n)?" 
# 	add_item = gets.chomp.upcase
# 	if add_item == "YES" || add_item == "Y"
# 		new_item = true
# 	else 
# 		new_item = false
# 	end
# end

loop do 
	list['items'].push(add_list_item())
 	puts "Add another item (y/n)?" 
 	add_item = gets.chomp.upcase
 	break if add_item == "N" || add_item == "No" 	
end

print_list(list)
