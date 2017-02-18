require_relative 'printer_mod'

class Array
	include Printer
end
class String
	include Printer
end

[1,2,3].print_elements
"hello".print_elements