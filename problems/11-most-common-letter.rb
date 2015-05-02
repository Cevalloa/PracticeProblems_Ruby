# Write a method that takes in a string. Your method should return the
# most common letter in the array, and a count of how many times it
# appears.
#
# Difficulty: medium.

def most_common_letter(string)

	#iterate through each char value
	#add each letter as a hash key, each hash key stores the letter & count
	#sort by highest to lowest, take first index

	hash_container = {}

	string.each_char do |char_value|

		if hash_container[char_value].nil?
			hash_container[char_value] = [char_value, 1]
		else
			hash_container[char_value][1] += 1
		end

	end

	hash_container.sort_by{|key, value| value[1]}.reverse[0][1]
end

# These are tests to check that your code is working. After writing
# your solution, they should all print true.

puts(
  'most_common_letter("abca") == ["a", 2]: ' +
  (most_common_letter('abca') == ['a', 2]).to_s
)
puts(
  'most_common_letter("abbab") == ["b", 3]: ' +
  (most_common_letter('abbab') == ['b', 3]).to_s
)
