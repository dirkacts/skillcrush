class MusicGear

	#setter for gig setup type
	def setup_type=(gig_type)
		@setup_type = gig_type
	end

	#setter for guitar used
	def guitar=(axe)
		@guitar = axe
	end

	#setter for amp used
	def amp=(box)
		@amp = box
	end

	#getter for setup type
	def setup_type
		@setup_type
	end

	#getter for guitar used
	def guitar
		@guitar
	end

	#getter for amp used
	def amp
		@amp
	end
end

	gear = MusicGear.new
	gear.setup_type = "Unplugged"
	gear.guitar = "Martin P"
	gear.amp = "Fender Bassman"

	puts "For an #{gear.setup_type} gig, I'll use my #{gear.guitar} guitar plugged into a #{gear.amp}."