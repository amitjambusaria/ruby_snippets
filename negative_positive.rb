require 'pry'


	# list = [-3, 5, 6, -1, -7, 9, 11, -14]

	# negatives = Array.new

	# list.each do |curr|
	# 	if  curr < 0
	# 		negatives.push(curr)
	# 	end
	# end

	# list.delete_if{|i| i<0}

	# p list
	# p negatives

# list = [-3, 5, 6, -1, -7, 9, 11, -14]

# a = list.select{|i| i < 0}.sort
# b = list.select{|i| i > 0}.sort

# p a
# p b


list = [1, 1, 2, 2, 3, 4, 4, 5]

a = list.select{|i| list.count(i) == 1} # returns array
b = list.detect{|i| list.count(i) == 1} # returns first element detected
c = list.select{|i| list.count(i) > 1}.uniq # returns duplicate elements

p a
p b
p c