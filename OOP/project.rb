class Project
	def initialize(val, desc)
		@name = val
		@description = desc
	end
	def elevator_pitch
		puts "The name of my project is #{@name} and here is a quick description: #{@description}"
	end
end

project1 = Project.new("Kitten Mittens", "Some fly-ass paw warmers for your favorite kitty!")
project1.elevator_pitchf2