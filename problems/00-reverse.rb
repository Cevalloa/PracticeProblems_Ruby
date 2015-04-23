# Write a method that will take a string as input, and return a new
# string with the same letters in reverse order.
#
# Don't use String's reverse method; that would be too simple.
#
# Difficulty: easy.

def reverse(string)

	start_index = 0
	last_index = string.length-1

	while start_index < last_index

		temp_variable = string[start_index]
		string[start_index] = string[last_index]
		string[last_index] = temp_variable

		temp_variable = nil
		start_index += 1
		last_index -= 1
	end

	string

end

# These are tests to check that your code is working. After writing
# your solution, they should all print true.

puts(
  'reverse("abc") == "cba": ' + (reverse("abc") == "cba").to_s
)
puts(
  'reverse("a") == "a": ' + (reverse("a") == "a").to_s
)
puts(
  'reverse("") == "": ' + (reverse("") == "").to_s
)
