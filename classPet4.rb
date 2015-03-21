class Pet
  attr_accessor :pet_name, :owner_name, :pet_sounds

  def initialize(name,owner,sound)
    @pet_name = name
    @owner_name = owner
    @pet_sounds = sound
  end
  
end
  
ferret = Pet.new("Fredo", "Adda", "squeeeeee")
parrot = Pet.new("Budgie", "Adda", "tweet")
chinchilla = Pet.new("Dali", "Adda", "eeeep")
  
puts ferret.pet_name + " says " + ferret.pet_sounds + ","
puts parrot.pet_name + " says " + parrot.pet_sounds + ","
puts chinchilla.pet_name + " says " + chinchilla.pet_sounds + "."