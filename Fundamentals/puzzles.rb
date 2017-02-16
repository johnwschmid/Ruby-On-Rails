#1
arr = [3,5,1,2,7,9,8,13,25,32]

puts arr.inject(:+)
puts arr.reject {|i| i < 10}


#2
names = ["John", "KB", "Oliver", "Cory", "Matthew", "Christopher"]

puts "Shuffled Names:"
puts names.shuffle
puts "Names with more than 5 characters:"
names.each {|i| puts i if i.length > 5}


#3
alph = Array("a".."z") 

shuff = alph.shuffle
puts shuff.last
puts shuff.first
puts shuff.first+" is a vowel." if ["a","e","i","o","u"].include?(shuff.first)
puts ["a","e","i","o","u"].include?(shuff.first) ? shuff.first+" is a vowel" : shuff.first+" is not a vowel"


#4
arr1 = Array(55..100)

puts arr1.sample(10)


#5
arr1 = Array(55..100).sample(10)

puts arr1.sort
print arr1.min
print " is the max number."
puts
print arr1.max
print " is the minimum number."
puts


#6
5.times {print rand(65..90).chr}
puts


#7
tenstrings = Array.new
10.times { tenstrings.push((1..5).map{ rand(65..90).chr }.join) }
print tenstrings
puts