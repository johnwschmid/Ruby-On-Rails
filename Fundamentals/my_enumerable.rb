module MyEnumerable
	def my_each
		for i in 0...self.length
			puts self[i]
		end
	end
end

class Array
	include MyEnumerable
end

a = [1,2,3,4]

a.my_each {|i| puts i}