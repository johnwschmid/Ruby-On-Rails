class Mammal
	attr_accessor :health
	def initialize
		@health = 150
	end
	def display_health
		puts "Health: #{@health}"
	end
end

class Dog < Mammal
	def pet
		@health += 5
		self
	end
	def walk
		@health -= 1
		self
	end
	def run
		@health -= 10
		self
	end
end

#Fido = Dog.new
#Fido.walk.walk.walk.run.run.pet.display_health

class Lion < Mammal
	def initialize
		@health = 170
	end
	def dash
		@health -= 10
		self
	end
	def attack
		@health -= 50
		self
	end
	def eat_people
		@health += 20
		self
	end
	def display_health
		puts "I am a Lion!"
		super
	end
end

King = Lion.new
King.attack.attack.attack.dash.dash.eat_people.eat_people.eat_people.display_health