names = {"student_one" => "Jimmy", "student_two" => "Fred", "student_three" => "Billy"}


puts names.delete("student_one"), names
puts "Is object empty?", names.empty?
puts "Does object have key student_one?", names.has_key?("student_one")
puts "Does object have value Fred?", names.has_value?("Fred")