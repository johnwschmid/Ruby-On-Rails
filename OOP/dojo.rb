class MathDojo
	attr_accessor :num

	def initialize
		@num = 0
	end

	def add(*val)
		if val.class == Array
			@num += val.flatten.reduce(:+)
		else
			@num += val
		end
		self
	end

	def subtract(*subt)
		if subt.class == Array
			@num -= subt.flatten.reduce(:+)
		else
			@num -= subt
		end
		self
	end
end

puts MathDojo.new.add(4,7,58).subtract([1,40]).num