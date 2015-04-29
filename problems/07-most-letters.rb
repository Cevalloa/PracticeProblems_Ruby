# Write a method that takes a string in and returns true if the letter
# "z" appears within three letters **after** an "a". You may assume
# that the string contains only lowercase letters.
#
# Difficulty: medium.

def nearby_az(string)

	#Regular expression method (works)
		# if string.scan(/a.{0,2}z/).nil?
		# 	return false
		# else
		# 	return true
		# end

	#Check string until an a is found
	#If an a is found, scan upto the next 3 letters
	#Within the scan, if a z is found return true
	#if loop completes without a match, return false

	iterator = 0
	while iterator < string.length-1 

		#Check string until an a is found
		if string[iterator] == 'a'

			counter = 0
			index = iterator + 1

			while (counter < 3 && string[index] != nil)
				if string[index] == 'z'
					return true
				end

				counter += 1
				index += 1
			end

		end

		iterator += 1
	end

	return false
end

# These are tests to check that your code is working. After writing
# your solution, they should all print true.

puts('nearby_az("baz") == true: ' + (nearby_az('baz') == true).to_s)
puts('nearby_az("abz") == true: ' + (nearby_az('abz') == true).to_s)
puts('nearby_az("abcz") == true: ' + (nearby_az('abcz') == true).to_s)
puts('nearby_az("a") == false: ' + (nearby_az('a') == false).to_s)
puts('nearby_az("z") == false: ' + (nearby_az('z') == false).to_s)
puts('nearby_az("za") == false: ' + (nearby_az('za') == false).to_s)
