# Write a method that takes an array of numbers in. Your method should
# return the third greatest number in the array. You may assume that
# the array has at least three numbers in it.
#
# Difficulty: medium.

def third_greatest(nums)

	#first method
		#sort the numbers highest to lowest
		#return value in index 2

	#second method
		#Iterate array through end
		#keep track of 3 highest values



	#first method.. tested and works
		#sort the numbers highest to lowest

	#	nums.sort { |first_value, second_value| second_value <=> first_value}[2]
	
		#return value in index 2


	#second method
		#Iterate array through end
		first = nil
		second = nil
		third = nil

		nums.each do |current_number|
			#keep track of 3 highest values
			if first == nil || current_number > first
				#Store temporarly first (to move down)
				temp_first = first
				first = current_number

				#Store temporarly (to move down)
				temp_second = second

				second = temp_first
				third = temp_second
			elsif second == nil || current_number > second
				temp_second = second
				second = current_number
				third = temp_second
			elsif third == nil || current_number > third
				third = current_number
			end

		end

		#return the highest third value
		third


end

# These are tests to check that your code is working. After writing
# your solution, they should all print true.

puts(
  'third_greatest([5, 3, 7]) == 3: ' +
  (third_greatest([5, 3, 7]) == 3).to_s
)
puts(
  'third_greatest([5, 3, 7, 4]) == 4: ' +
  (third_greatest([5, 3, 7, 4]) == 4).to_s
)
puts(
  'third_greatest([2, 3, 7, 4]) == 3: ' +
  (third_greatest([2, 3, 7, 4]) == 3).to_s
)
