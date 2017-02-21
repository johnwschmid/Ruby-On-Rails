class Planet
	attr_accessor :name, :desc, :pop
	def initialize name, desc, pop
		@name = name
		@desc = desc
		@pop = pop
	end
end

class Solar
	attr_accessor :name, :planets
	def initialize name = "Solar System"
		@name = name
		@planets = []
	end
	def add_planet planet
		@planets.push(planet)
		self
	end
	def count_planets
		@planets.count
		#puts "There are "+self.planets.count.to_s+" planets.", "They are: "+self.inspect
	end
	def super_nova
		@planets.clear
		self
	end
end

=begin
#
alpha = Solar.new("Alpha Centuri")
planet1 = Planet.new("Earth", "Blue", "7 Billion")
planet2 = Planet.new("Mars", "Red", "Like 2 or 3")
alpha.add_planet(planet1).add_planet(planet2).count.super_nova.count
=end

RSpec.describe Planet do
	it 'has name, description and populations attributes' do
		planet1 = Planet.new("Earth", "Blue", "7 Billion")
		expect(planet1).to have_attributes(:name => "Earth")
		expect(planet1).to have_attributes(:desc => "Blue")
		expect(planet1).to have_attributes(:pop => "7 Billion")
	end
end

RSpec.describe Solar do
	it "initialize with a name but default to 'Solar System'" do
		alpha = Solar.new
		expect(alpha.name).to eq("Solar System")
		alpha.name = "Alpha Centuri"
		expect(alpha.name).to eq("Alpha Centuri")
	end

	describe "behavior" do
		before do
			@alpha = Solar.new
			@alpha.add_planet("Earth").add_planet("Mars")
		end

		it "has a method to count planets" do
			expect(@alpha.count_planets).to eq(2)
		end

		it "has a method that destroys all planets" do
			@alpha.super_nova
			expect(@alpha.planets.empty?).to eq(true)
		end
	end
end