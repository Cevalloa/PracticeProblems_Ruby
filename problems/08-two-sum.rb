# Write a method that takes an array of numbers. If a pair of numbers
# in the array sums to zero, return the positions of those two numbers.
# If no pair of numbers sums to zero, return `nil`.
#
# Difficulty: medium.

def two_sum(nums)

	#option 1

	#Every index, add with other number
		#downfall -> n^2

	#Check first to last, like a palindrome (this won't work)

	#quick sort, add numbers up to 0

	#Every Index, add with other number
		#Iterate through array
		nums.each_with_index do |number, index|
		#iterate array with each individual number
			nums.each_with_index do |second_number, second_index|
				#skip if it is the same number
				next if index == second_index

				#if there is a match, return starting & current index
				if (number + second_number == 0)
					return [index, second_index]
				end

			end

		end
		#if there is no match, return nil (iterate through)

		nil

end

# These are tests to check that your code is working. After writing
# your solution, they should all print true.

puts(
  'two_sum([1, 3, 5, -3]) == [1, 3]: ' + (two_sum([1, 3, 5, -3]) == [1, 3]).to_s
)
puts(
  'two_sum([1, 3, 5]) == nil: ' + (two_sum([1, 3, 5]) == nil).to_s
)
