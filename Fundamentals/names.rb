a = {:first_name => "Michael", :last_name => "Choi"}
b = {:first_name => "John", :last_name => "Supsupin"}
c = {:first_name => "KB", :last_name => "Tonel"}
d = {:first_name => "Jessie", :last_name => "De Leon"}
e = {:first_name => "Jaybee", :last_name => "Balog"}

names = [a, b, c, d, e]

puts "You have "+names.length.to_s+" names in your array."

=begin
puts "The first name is "+a[:first_name]+" "+a[:last_name]
puts "The second name is "+b[:first_name]+" "+b[:last_name]
puts "The third name is "+c[:first_name]+" "+c[:last_name]
puts "The fourth name is "+d[:first_name]+" "+d[:last_name]
puts "The fifth name is "+e[:first_name]+" "+e[:last_name]
=end

names.each {|i| puts "The name is "+i.values.join(' ')}